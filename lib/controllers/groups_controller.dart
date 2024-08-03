import 'package:get/get.dart';

class GroupsController extends GetxController {
  var isFriendsExpanded = false.obs;
  var isPublicGroupsExpanded = false.obs;
  var isMyGroupsExpanded = false.obs;

  void toggleFriendsExpanded() {
    isFriendsExpanded.value = !isFriendsExpanded.value;
  }

  void togglePublicGroupsExpanded() {
    isPublicGroupsExpanded.value = !isPublicGroupsExpanded.value;
  }

  void toggleMyGroupsExpanded() {
    isMyGroupsExpanded.value = !isMyGroupsExpanded.value;
  }
}
