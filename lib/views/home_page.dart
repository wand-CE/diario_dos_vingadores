import 'package:diario_dos_vingadores/models/avenger_model.dart';
import 'package:diario_dos_vingadores/views/my_widgets/avenger_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/avenger_api_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final AvengerApiController _avengerApiController = Get.find();

  @override
  Widget build(BuildContext context) {
    _avengerApiController.getAvengers();
    // _countryApiController.getCountries();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Diário dos Vingadores',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[900],
        iconTheme: IconThemeData(color: Colors.white70),
      ),
      body: Obx(() {
        if (_avengerApiController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        final countriesList = _avengerApiController.avengers;

        return ListView.builder(
          itemCount: countriesList.length,
          itemBuilder: (context, index) {
            AvengerModel currentAvenger = countriesList[index];

            return AvengerTile(
              avengerName: currentAvenger.name,
              avengerImage: currentAvenger.image,
              avengerStrength: currentAvenger.power,
              buttonFunction: () => Get.toNamed(
                '/avengerDetailPage',
                arguments: {
                  'avengerName': currentAvenger.name,
                  'avengerImage': currentAvenger.image,
                  'avengerIntelligence': currentAvenger.intelligence,
                  'avengerStrength': currentAvenger.strength,
                  'avengerSpeed': currentAvenger.speed,
                  'avengerPower': currentAvenger.power,
                  'avengerCombat': currentAvenger.combat,
                },
              ),
            );
          },
        );
      }),
    );
  }
}
