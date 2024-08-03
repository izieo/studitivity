import 'package:get/get.dart';

class SettingsController extends GetxController {
  var emailNotifications = true.obs;
  var pushNotifications = true.obs;
  var streakFeature = true.obs;

  void toggleEmailNotifications(bool value) {
    emailNotifications.value = value;
  }

  void togglePushNotifications(bool value) {
    pushNotifications.value = value;
  }

  void toggleStreakFeature(bool value) {
    streakFeature.value = value;
  }
}
