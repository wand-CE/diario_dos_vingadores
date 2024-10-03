import 'package:diario_dos_vingadores/controllers/avenger_api_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final AvengerApiController avengerApiController =
      Get.put(AvengerApiController());

  runApp(GetMaterialApp(
    initialRoute: AppRoutes.homePage,
    routes: AppRoutes.define(),
    debugShowCheckedModeBanner: false,
  ));
}
