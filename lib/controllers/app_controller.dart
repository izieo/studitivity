import 'package:get/get.dart';
import 'package:studitivity/screens/login.dart';

class AppController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    _setInitialScreen();
  }

  _setInitialScreen() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      Get.offAll(const Login());
    });
  }
}