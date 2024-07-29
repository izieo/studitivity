import 'package:get/get.dart';
import 'package:studitivity/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:studitivity/auth_page.dart';


class AppController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    _setInitialScreen();
  }

  _setInitialScreen() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      Get.offAll(() => const AuthPage());
    });
  }

  void logout() {
    FirebaseAuth.instance.signOut();
    Get.offAll(() => Login());
  }
}

