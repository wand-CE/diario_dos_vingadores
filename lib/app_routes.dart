import 'package:diario_dos_vingadores/views/avenger_detail_page.dart';
import 'package:flutter/material.dart';
import 'views/home_page.dart';

class AppRoutes {
  static const homePage = '/homePage';
  static const avengerDetailPage = '/avengerDetailPage';

  static Map<String, WidgetBuilder> define() {
    return {
      homePage: (BuildContext context) => HomePage(),
      avengerDetailPage: (BuildContext context) => AvengerDetailPage(),
    };
  }
}
