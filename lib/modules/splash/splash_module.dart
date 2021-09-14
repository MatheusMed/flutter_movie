import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:moviedb_flutter/application/modules/module.dart';
import 'package:moviedb_flutter/modules/splash/splash_bindings.dart';
import 'package:moviedb_flutter/modules/splash/splash_page.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routes = [
    GetPage(
      name: '/',
      page: () => SplashPage(),
      binding: SplashBindings(),
    ),
  ];
}
