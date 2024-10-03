import 'package:diario_dos_vingadores/services/avenger_api_service.dart';
import 'package:get/get.dart';

class AvengerApiController extends GetxController {
  final AvengerApiService _avengerApiService = AvengerApiService();

  var avengers = [].obs;
  var isLoading = true.obs;

  Future<void> getAvengers() async {
    try {
      isLoading(true);
      await Future.delayed(Duration(seconds: 2));
      final avengersFetched = await _avengerApiService.fetchAvengers();
      avengers.assignAll(avengersFetched);
    } finally {
      isLoading(false);
    }
  }
}
