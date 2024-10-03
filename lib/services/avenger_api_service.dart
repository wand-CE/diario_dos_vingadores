import 'package:diario_dos_vingadores/models/avenger_model.dart';
import 'package:get/get.dart';

const apiKey = 'MINHA-CHAVE-API';

class AvengerApiService extends GetConnect {
  final url = "https://superheroapi.com/api/$apiKey";

  Future<List<dynamic>> fetchAvengers() async {
    try {
      final avengersList = [
        "hulk",
        "ironman",
        "captain_america",
        "spider-man",
        "spider-woman",
        "Ant-Man",
        "Scarlet_Witch",
        "Black_Panther",
        "Black_Widow",
        "Doctor_Strange",
      ];
      List<dynamic> avengers = [];

      for (var avengerName in avengersList) {
        final avenger = await fetchAvenger(avengerName);
        avengers.add(avenger);
      }

      return avengers.map((json) => AvengerModel.fromJson(json)).toList();
    } catch (e) {
      print(e);
      throw Exception('Não foi possível retornar os vingadores');
    }
  }

  Future<Map<String, dynamic>> fetchAvenger(String avenger) async {
    final response = await get("$url/search/$avenger");

    if (response.statusCode == 200 && response.body["response"] == "success") {
      final Map<String, dynamic> result = response.body["results"][0];

      final avengerStats = result["powerstats"];

      final Map<String, dynamic> avenger = {
        "name": result['name'],
        "image": result['image']["url"],
        "power": avengerStats["power"],
        "intelligence": avengerStats["intelligence"],
        "strength": avengerStats["strength"],
        "speed": avengerStats["speed"],
        "combat": avengerStats["combat"],
      };

      return avenger;
    } else {
      throw Exception('Falha ao retornar os vingadores');
    }
  }
}
