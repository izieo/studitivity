import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studitivity/screens/settings.dart';
import 'package:studitivity/screens/subjects.dart';
import 'package:studitivity/controllers/app_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
            onTap: () {
              Get.find<AppController>().logout();
              },
            child: const Center(
              child: Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Text(
                  'Logout',
                  style: TextStyle(color: Colors.blue, fontSize: 16.0),
                ),
              ),
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.blue),
          onPressed: () => Get.back(),
          color: Colors.black,
        ),
        elevation: 1,
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.black, fontSize: 16.0),
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.transparent,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 5.0,
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://media.licdn.com/dms/image/C5603AQEoy5iwuDZxDA/profile-displayphoto-shrink_400_400/0/1649584891937?e=1726704000&v=beta&t=2jTi9_v7RypOpiLM0IVoFJYTGgapRboF595y6bUAFdU'
                      ),
                      radius: 20.0,
                    ),
                  ),
                  const Text(
                    'Izie',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  const Text(
                    'Postgraduate Student at Sheffield Hallam University',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            profileCard(Icons.settings, 'Settings', 'Update your preferences', () => Get.to(const SettingsView())),
            profileCard(Icons.emoji_events, 'Achievements', 'View all achievements you can earn', () {}),
            profileCard(Icons.school, 'Subjects', 'View and edit subjects', () => Get.to(const SubjectsView())),
            profileCard(Icons.quiz, 'FAQ', 'Find answer to frequently asked questions', () {}),
          ],
        ),
      ),
    );
  }

  Widget profileCard(IconData icon, String text, String subtext, VoidCallback action) {
    return GestureDetector(
      onTap: action,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.transparent,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 5.0,
        ),
        margin: const EdgeInsets.only(top: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Icon(icon, size: 30.0, color: Colors.blue),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          subtext,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 14.0, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
