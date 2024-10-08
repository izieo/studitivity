import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studitivity/screens/notification.dart';
import 'package:studitivity/screens/block_apps.dart';
import 'package:studitivity/widgets/notification_badge.dart';
import 'package:studitivity/controllers/app_controller.dart';

class GroupDetailsView extends StatelessWidget {
  const GroupDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final AppController controller = Get.find<AppController>();
    double itemWidth = (MediaQuery.of(context).size.width - 40) / 2;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color.fromARGB(255, 97, 44, 220),
                            size: 24.0,
                          ),
                        ),
                        onTap: () => Get.back(),
                      ),
                      const SizedBox(width: 10.0),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 97, 44, 220),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
                        child: const Text('Izie\'s Study Group', style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 97, 44, 220),
                          size: 24.0,
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 97, 44, 220),
                            borderRadius: BorderRadius.all(Radius.circular(20.0))
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
                          child: const Row(
                            children: [
                              Icon(Icons.electric_bolt, color: Colors.white, size: 12.0),
                              SizedBox(width: 3.0),
                              Text('5', style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      InkWell(
                        onTap: () => Get.to(() => const NotificationView()),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: NotificationBadge(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () => Get.to(() => const BlockAppsPage()),
                        child: const BlockAppFeature(),
                      ),
                    ),
                    const FocusTimerCard(),
                    Wrap(
                      spacing: 20.0,
                      runSpacing: 20.0,
                      children: [
                        PersonalFocusTimer(
                          name: 'You',
                          streakCount: 5,
                          time: '1:02:31',
                          image: 'https://media.licdn.com/dms/image/C5603AQEoy5iwuDZxDA/profile-displayphoto-shrink_400_400/0/1649584891937?e=1726704000&v=beta&t=2jTi9_v7RypOpiLM0IVoFJYTGgapRboF595y6bUAFdU',
                          width: itemWidth,
                          micStatus: 'off', 
                        ),
                        PersonalFocusTimer(
                          name: 'Benjamin',
                          streakCount: 28,
                          time: '2:10:02',
                          image: 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-moh-adbelghaffar-771742.jpg&fm=jpg&_gl=1*1n4jr4g*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                          width: itemWidth,
                          micStatus: 'on', 
                        ),
                        PersonalFocusTimer(
                          name: 'Jeremiah',
                          streakCount: 102,
                          time: '1:20:11',
                          image: 'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?cs=srgb&dl=pexels-andrewpersonaltraining-697509.jpg&fm=jpg&_gl=1*85wvqc*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                          width: itemWidth,
                          micStatus: 'off', 
                        ),
                        PersonalFocusTimer(
                          name: 'Dara',
                          streakCount: 395,
                          time: '30:00',
                          image: 'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg&_gl=1*svk2ei*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NzAyOC4wLjAuMA..',
                          width: itemWidth,
                          micStatus: 'off', 
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam_off),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic_off),
            label: 'Mic',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: controller.selectedIndex.value,
        selectedItemColor: Colors.blue,
        onTap: controller.onItemTapped,
        type: BottomNavigationBarType.fixed,
      )),
    );
  }
}

class FocusTimerCard extends StatelessWidget {
  const FocusTimerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(122, 158, 158, 158),
            blurRadius: 5.0,
          ),
        ],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Column(
          children: [
            const SizedBox(height: 10.0),
            const Text(
              'Focus',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.add, size: 30.0),
                Container(
                  decoration: const BoxDecoration(
                    color:  Color.fromARGB(255, 103, 91, 145),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
                  child: const Text(
                    '20:00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Icon(Icons.remove, size: 30.0),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 233, 231, 231),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 15.0),
                  child: const Column(
                    children: [
                      Icon(Icons.play_arrow, size: 30.0),
                      Text('Start', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                const SizedBox(width: 30.0),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 233, 231, 231),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 15.0),
                  child: const Column(
                    children: [
                      Icon(Icons.refresh, size: 30.0),
                      Text('Reset', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}

class PersonalFocusTimer extends StatelessWidget {
  const PersonalFocusTimer({
    super.key,
    required this.name,
    required this.streakCount,
    required this.time,
    required this.image,
    required this.width,
    required this.micStatus,
  });

  final String name;
  final int streakCount;
  final String time;
  final String image;
  final double width;
  final String micStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 192, 191, 191),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      padding: const EdgeInsets.all(10.0),
      height: width,
      width: width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(width: 5.0),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
                ),
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
                child: Row(
                  children: [
                    const Icon(Icons.electric_bolt, color: Colors.white, size: 12.0),
                    const SizedBox(width: 3.0),
                    Text('$streakCount', style: const TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(image),
                radius: 40.0,
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: micStatus == 'on' ? Colors.green : Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    micStatus == 'on' ? Icons.mic : Icons.mic_off,
                    color: Colors.white,
                    size: 20.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 3.0),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.all(Radius.circular(50.0))
            ),
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
            margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: Row(
              children: [
                const Icon(Icons.timer, color: Colors.white, size: 20.0),
                const SizedBox(width: 10.0),
                Text(
                  time,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
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

class BlockAppFeature extends StatelessWidget {
  const BlockAppFeature({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      width: 190.0,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(122, 158, 158, 158),
            blurRadius: 5.0,
          ),
        ],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: const Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.block, size: 30.0),
              SizedBox(width: 10.0),
              Text(
                'Block Apps',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
