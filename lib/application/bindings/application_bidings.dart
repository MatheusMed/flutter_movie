import 'package:get/get.dart';
import 'package:moviedb_flutter/repositories/login/login_repository.dart';
import 'package:moviedb_flutter/repositories/login/login_repository_impl.dart';
import 'package:moviedb_flutter/services/login_service.dart';
import 'package:moviedb_flutter/services/login_service_impl.dart';

class ApplicationBidings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginRepository>(() => LoginRepositoryImpl(), fenix: true);
    Get.lazyPut<LoginService>(
        () => LoginServiceImpl(loginRepository: Get.find()),
        fenix: true);
  }
}
