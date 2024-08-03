import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studitivity/screens/create_group.dart';
import 'package:studitivity/screens/group.dart';
import 'package:studitivity/screens/notification.dart';
import 'package:studitivity/screens/friends.dart';
import 'package:studitivity/screens/public_groups.dart';
import 'package:studitivity/screens/profile.dart'; 
import 'package:studitivity/widgets/notification_badge.dart';
import 'package:studitivity/controllers/groups_controller.dart'; 

class GroupsView extends StatelessWidget {
  const GroupsView({super.key});

  @override
  Widget build(BuildContext context) {
    final GroupsController controller = Get.put(GroupsController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
         padding: const EdgeInsets.only(top: 20.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Get.to(() => const ProfileView()),  
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://media.licdn.com/dms/image/C5603AQEoy5iwuDZxDA/profile-displayphoto-shrink_400_400/0/1649584891937?e=1726704000&v=beta&t=2jTi9_v7RypOpiLM0IVoFJYTGgapRboF595y6bUAFdU',
                            ),
                            radius: 20.0,
                          ),
                        ),
                        const Text(
                          'Study Groups',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
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
                    const SizedBox(height: 20.0),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 218, 217, 217),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Streak Progress',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 218, 217, 217),
                                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                    ),
                                    height: 15.0,
                                    width: 150.0,
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 106, 86, 171), //progress color
                                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                    ),
                                    height: 15.0,
                                    width: 75.0
                                  ),
                                ],
                              ),
                              const SizedBox(width: 20.0),
                              const Text('10mins/20mins', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          GestureDetector(
                            onTap: controller.toggleFriendsExpanded,
                            child: Container(
                              color: Colors.transparent,
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Friends',
                                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                                  ),
                                  Obx(() => Icon(controller.isFriendsExpanded.value
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down)),
                                ],
                              ),
                            ),
                          ),
                          Obx(() => controller.isFriendsExpanded.value
                            ? Column(
                              children: [
                                SizedBox(
                                  height: 140.0,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: const [
                                      GroupMemberCard(
                                        name: 'Benjamin',
                            pictureUrl: 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-moh-adbelghaffar-771742.jpg&fm=jpg&_gl=1*1n4jr4g*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                                        status: 'Online',
                                      ),
                                      GroupMemberCard(
                                        name: 'Jeremiah',
                            pictureUrl: 'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?cs=srgb&dl=pexels-andrewpersonaltraining-697509.jpg&fm=jpg&_gl=1*85wvqc*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                                        status: 'Offline',
                                      ),
                                      GroupMemberCard(
                                        name: 'Dara',
                            pictureUrl: 'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg&_gl=1*svk2ei*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NzAyOC4wLjAuMA..',
                                        status: 'Online',
                                      ),
                                      GroupMemberCard(
                                        name: 'Abiodun',
                            pictureUrl: 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg&_gl=1*17z916h*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                                        status: 'Online',
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => Get.to(() => const FriendsView()),  
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('See All', style: TextStyle(color: Colors.blue)),
                                  ),
                                ),
                              ],
                            )
                            : const SizedBox.shrink()),
                          const SizedBox(height: 20.0),
                          GestureDetector(
                            onTap: controller.togglePublicGroupsExpanded,
                            child: Container(
                              color: Colors.transparent,
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Public Groups',
                                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                                  ),
                                  Obx(() => Icon(controller.isPublicGroupsExpanded.value
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down)),
                                ],
                              ),
                            ),
                          ),
                          Obx(() => controller.isPublicGroupsExpanded.value
                            ? Column(
                              children: [
                                SizedBox(
                                  height: 160.0,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: const [
                                      StudyGroupCard(
                                        name: 'Jerry\'s Study Group',
                                        pictureUrl: 'https://images.stockcake.com/public/6/c/0/6c059b01-9f0f-4d29-b56e-1cf1bac44156_large/zebras-at-dusk-stockcake.jpg',
                                        numOnline: 4,
                                        numMembers: 238,
                                        members: [
                              'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-moh-adbelghaffar-771742.jpg&fm=jpg&_gl=1*1n4jr4g*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                              'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?cs=srgb&dl=pexels-andrewpersonaltraining-697509.jpg&fm=jpg&_gl=1*85wvqc*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                              'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg&_gl=1*svk2ei*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NzAyOC4wLjAuMA..',
                              'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg&_gl=1*17z916h*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                                        ],
                                      ),
                                      StudyGroupCard(
                                        name: 'Izie\'s Study Group',
                                        pictureUrl: 'https://images.stockcake.com/public/0/e/c/0ec46d36-1e97-484d-9332-f1bb231b80d2_large/flamingos-at-dusk-stockcake.jpg',
                                        numOnline: 120,
                                        numMembers: 321,
                                        members: [
                              'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-moh-adbelghaffar-771742.jpg&fm=jpg&_gl=1*1n4jr4g*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                              'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?cs=srgb&dl=pexels-andrewpersonaltraining-697509.jpg&fm=jpg&_gl=1*85wvqc*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                              'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg&_gl=1*svk2ei*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NzAyOC4wLjAuMA..',
                              'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg&_gl=1*17z916h*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                                        ],
                                      ),
                                      StudyGroupCard(
                                        name: 'Gloria\'s Study Group',
                                        pictureUrl: 'https://images.stockcake.com/public/2/8/8/288ea098-e768-4db2-81c8-9683ce7e0e5f_large/balloon-at-dusk-stockcake.jpg',
                                        numOnline: 12,
                                        numMembers: 32,
                                        members: [
                              'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-moh-adbelghaffar-771742.jpg&fm=jpg&_gl=1*1n4jr4g*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                              'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?cs=srgb&dl=pexels-andrewpersonaltraining-697509.jpg&fm=jpg&_gl=1*85wvqc*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                              'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg&_gl=1*svk2ei*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NzAyOC4wLjAuMA..',
                              'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg&_gl=1*17z916h*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => Get.to(() => const PublicGroupsView()),  
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('See All', style: TextStyle(color: Colors.blue)),
                                  ),
                                ),
                              ],
                            )
                            : const SizedBox.shrink()),
                          const SizedBox(height: 20.0),
                          GestureDetector(
                            onTap: controller.toggleMyGroupsExpanded,
                            child: Container(
                              color: Colors.transparent,
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'My Groups',
                                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                                  ),
                                  Obx(() => Icon(controller.isMyGroupsExpanded.value
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down)),
                                ],
                              ),
                            ),
                          ),
                          Obx(() => controller.isMyGroupsExpanded.value
                            ? const SizedBox(
                              height: 160.0,
                              child: StudyGroupCard(
                                name: 'Izie\'s Study Group',
                                pictureUrl: 'https://images.stockcake.com/public/0/e/c/0ec46d36-1e97-484d-9332-f1bb231b80d2_large/flamingos-at-dusk-stockcake.jpg',
                                numOnline: 4,
                                numMembers: 30,
                                members: [
                                  'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-moh-adbelghaffar-771742.jpg&fm=jpg&_gl=1*1n4jr4g*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                                  'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?cs=srgb&dl=pexels-andrewpersonaltraining-697509.jpg&fm=jpg&_gl=1*85wvqc*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                                  'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg&_gl=1*svk2ei*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                                  'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg&_gl=1*17z916h*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                                ],
                              ),
                            )
                            : const SizedBox.shrink()),
                          const SizedBox(height: 100.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        child: FloatingActionButton.extended(
           onPressed: () => Get.to(() => const NewGroupView()), 
          backgroundColor: const Color.fromARGB(255, 97, 44, 220),
          label: const Text('Group', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0)),
          icon: const Icon(Icons.add, color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class GroupMemberCard extends StatelessWidget {
  const GroupMemberCard({
    super.key,
    required this.name,
    required this.pictureUrl,
    required this.status,
  });

  final String name;
  final String pictureUrl;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        color: Color.fromARGB(255, 219, 218, 218),
      ),
      width: 150.0,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(right: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: const TextStyle(fontSize: 15.0)),
          const SizedBox(height: 10.0),
          CircleAvatar(
            backgroundImage: NetworkImage(pictureUrl),
            radius: 20.0,
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: status == 'Online' ? Colors.green : Colors.white,
                ),
                height: 8.0,
                width: 8.0,
              ),
              const SizedBox(width: 5.0),
              Text(status, style: const TextStyle(fontSize: 15.0)),
            ],
          ),
        ],
      ),
    );
  }
}

class StudyGroupCard extends StatelessWidget {
  const StudyGroupCard({
    super.key,
    required this.name,
    required this.pictureUrl,
    required this.numOnline,
    required this.numMembers,
    required this.members,
  });

  final String name;
  final String pictureUrl;
  final int numOnline;
  final int numMembers;
  final List<String> members;  
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const GroupDetailsView()),  
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            image: DecorationImage(
              image: NetworkImage(pictureUrl),
              fit: BoxFit.cover,
          )
        ),
        width: Get.width * 0.7,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        margin: const EdgeInsets.only(right: 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.more_horiz),
                Row(
                  children: [
                    const Icon(Icons.group),
                    const SizedBox(width: 5.0),
                    Text('$numMembers'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  height: 8.0,
                  width: 8.0,
                ),
                const SizedBox(width: 5.0),
                Text('$numOnline online', style: const TextStyle(fontSize: 15.0)),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: members.map((member) => Container(
                            margin: const EdgeInsets.only(right: 5.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(member),
                              radius: 15.0,
                            ),
                  )).toList(),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(color: const Color.fromARGB(255, 96, 67, 194)) 
                  ),
                  child: const Text(
                    'Enter',
                    style: TextStyle(fontSize: 14.0, color: Color.fromARGB(255, 97, 44, 220)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
