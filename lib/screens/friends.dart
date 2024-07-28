import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FriendsView extends StatelessWidget {
  const FriendsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: Get.back,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Color.fromARGB(255, 97, 44, 220),
              size: 20.0,
            ),
          ),
        ),
        title: const Text(
          'Friends',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 97, 44, 220),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(
              Icons.search,
              color: Color.fromARGB(255, 97, 44, 220),
              size: 20.0,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 97, 44, 220),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'See Friend Requests',
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 16.0, // Text size
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: const [
                    GroupMemberCard(
                      name: 'Benjamin',
                      pictureUrl: 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-moh-adbelghaffar-771742.jpg&fm=jpg&_gl=1*1n4jr4g*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                      status: 'Online',
                    ),
                    GroupMemberCard(
                      name: 'Jeremiah',
                      pictureUrl: 'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?cs=srgb&dl=pexels-andrewpersonaltraining-697509.jpg&fm=jpg&_gl=1*85wvqc*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                      status: 'Offline',
                    ),
                    GroupMemberCard(
                      name: 'Dara',
                      pictureUrl: 'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg&_gl=1*svk2ei*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NzAyOC4wLjAuMA..',
                      status: 'Online',
                    ),
                    GroupMemberCard(
                      name: 'Abiodun',
                      pictureUrl: 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg&_gl=1*17z916h*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                      status: 'Online',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(pictureUrl),
            radius: 30.0,
          ),
          const SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(fontSize: 18.0)),
              const SizedBox(height: 5.0),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: status == 'Online' ? Colors.green : Colors.white,
                    ),
                    height: 10.0,
                    width: 10.0,
                  ),
                  const SizedBox(width: 5.0),
                  Text(status, style: const TextStyle(fontSize: 15.0)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
