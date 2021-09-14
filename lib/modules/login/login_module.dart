import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:moviedb_flutter/application/modules/module.dart';
import 'package:moviedb_flutter/modules/login/login_binding.dart';
import 'package:moviedb_flutter/modules/login/login_page.dart';

class LoginModule implements Module {
  @override
  List<GetPage> routes = [
    GetPage(
      name: '/login',
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
