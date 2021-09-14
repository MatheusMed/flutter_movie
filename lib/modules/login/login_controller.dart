import 'package:get/get.dart';
import 'package:moviedb_flutter/application/ui/loader/loader_mixin.dart';
import 'package:moviedb_flutter/application/ui/messages/messages_mixin.dart';
import 'package:moviedb_flutter/services/login_service.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final LoginService _loginService;
  final loading = false.obs;
  final message = Rxn<MessageModel>();

  LoginController({required LoginService loginService})
      : _loginService = loginService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  Future<void> login() async {
    try {
      loading(true);
      await _loginService.login();
      loading(false);
      message(MessageModel.info(
          title: 'Login Sucesso', message: 'Login Realizado com Sucesso'));
    } catch (e, s) {
      print(e);
      print(s);
      loading(false);
      message(
        MessageModel.error(
            title: 'Error no login', message: 'Erro ao realziar o login'),
      );
    }
  }
}
