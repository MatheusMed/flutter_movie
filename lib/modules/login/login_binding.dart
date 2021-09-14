import 'package:get/get.dart';
import 'package:moviedb_flutter/modules/login/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LoginController(
        loginService: Get.find(),
      ),
    );
  }
}
