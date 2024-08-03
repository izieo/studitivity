
import 'package:get/get.dart';

class BlockAppsController extends GetxController {
  var blockAll = false.obs;
  var appBlockStatus = List<bool>.filled(6, false).obs;

  final List<String> appList = [
    'WhatsApp',
    'Facebook',
    'Instagram',
    'Twitter',
    'Snapchat',
    'YouTube',
  ].obs;

  void toggleBlockAll(bool value) {
    blockAll.value = value;
    for (int i = 0; i < appBlockStatus.length; i++) {
      appBlockStatus[i] = value;
    }
    appBlockStatus.refresh();
  }

  void toggleAppBlockStatus(int index, bool value) {
    if (index >= 0 && index < appBlockStatus.length) {
      appBlockStatus[index] = value;
      appBlockStatus.refresh();
    }
  }
}
