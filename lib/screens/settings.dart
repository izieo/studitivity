import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studitivity/controllers/settings_controller.dart'; 

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final SettingsController controller = Get.put(SettingsController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.blue),
          onPressed: () => Get.back(),
        ),
        elevation: 0,
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.black, fontSize: 16.0),
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            settingsGroup([
              settingsTile(Icons.email, 'Update Email'),
              const Divider(color: Colors.black),
              settingsTile(Icons.youtube_searched_for, 'Change Password'),
            ]),
            const SizedBox(height: 20.0),
            settingsGroup([
              settingsTile(Icons.sunny, 'Theme'),
              const Divider(color: Colors.black),
              settingsTile(Icons.translate, 'Language'),
              const Divider(color: Colors.black),
              settingsTile(Icons.calendar_today, 'Import Calendar'),
              const Divider(color: Colors.black),
              Obx(() => settingsTile(
                Icons.notifications,
                'Email Notifications',
                addSwitch: true,
                switchValue: controller.emailNotifications.value,
                onSwitchChanged: controller.toggleEmailNotifications,
              )),
              const Divider(color: Colors.black),
              Obx(() => settingsTile(
                Icons.dark_mode,
                'Push Notifications',
                addSwitch: true,
                switchValue: controller.pushNotifications.value,
                onSwitchChanged: controller.togglePushNotifications,
              )),
              const Divider(color: Colors.black),
              Obx(() => settingsTile(
                Icons.electric_bolt,
                'Streak Feature',
                addSwitch: true,
                switchValue: controller.streakFeature.value,
                onSwitchChanged: controller.toggleStreakFeature,
              )),
            ]),
            const SizedBox(height: 20.0),
            settingsGroup([
              settingsTile(Icons.help, 'Contact Support'),
            ]),
            const SizedBox(height: 20.0),
            settingsGroup([
              InkWell(
                onTap: () => showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: const Text('Are you sure you want to delete your account?'),
                      actions: [
                        TextButton(
                          onPressed: Get.back,
                          child: const Text('Cancel', style: TextStyle(color: Colors.blue)),
                        ),
                        TextButton(
                          onPressed: Get.back,
                          child: const Text('Continue', style: TextStyle(color: Colors.blue)),
                        ),
                      ],
                    );
                  },
                ),
                child: settingsTile(Icons.do_not_disturb_on_outlined, 'Delete Account'),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Widget settingsGroup(List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(122, 158, 158, 158),
            blurRadius: 5.0,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: children),
    );
  }

  Widget settingsTile(IconData icon, String text, {bool addSwitch = false, bool switchValue = false, ValueChanged<bool>? onSwitchChanged}) {
    return SizedBox(
      height: 50.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon),
                const SizedBox(width: 10.0),
                Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            addSwitch
                ? Switch(
                    value: switchValue,
                    onChanged: onSwitchChanged,
                    activeColor: Colors.white,
                    activeTrackColor: Colors.green,
                    inactiveThumbColor: Colors.grey[800],
                  )
                : const Icon(Icons.keyboard_arrow_down, size: 20.0, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
