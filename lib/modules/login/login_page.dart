import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:moviedb_flutter/modules/login/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
            width: Get.width,
            height: Get.height,
          ),
          Container(
            color: Colors.black45,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Image.asset('assets/images/logo.png'),
                SizedBox(height: 50),
                SizedBox(
                  width: Get.width * .9,
                  height: 42,
                  child: SignInButton(
                    Buttons.Google,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    onPressed: () => controller.login(),
                    text: 'Entrar com o Google',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
