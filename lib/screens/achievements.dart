import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Achievements extends StatelessWidget {
  const Achievements({super.key});

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
              color: Colors.blue,
              size: 24.0,
            ),
          ),
        ),
        title: const Text(
          'Achievements',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
        child: ListView(
          children: const [
            AchievementCard(
              text: 'Star Performer',
              subtext: 'Maintain 30 days streak to earn',
              ratio: '5/30',
            ),
            AchievementCard(
              text: 'Bookworm',
              subtext: 'Complete 5 consecutive focus sessions, each lasting at least 20 minutes',
              ratio: '2/5',
            ),
            AchievementCard(
              text: 'Task Master',
              subtext: 'Complete 50 tasks within due date to earn',
              ratio: '10/50',
            ),
            AchievementCard(
              text: 'Daily Titan',
              subtext: 'Complete all tasks due today to earn',
              ratio: '4/5',
            ),
            AchievementCard(
              text: 'Weekly Warrior',
              subtext: 'Complete all tasks due for 7 consecutive days to earn',
              ratio: '3/7',
            ),
          ],
        ),
      ),
    );
  }
}

class AchievementCard extends StatelessWidget {
  const AchievementCard({
    super.key,
    required this.text,
    required this.subtext,
    required this.ratio,
  });

  final String text;
  final String subtext;
  final String ratio;

  @override
  Widget build(BuildContext context) {
    List<int> numbers = ratio.split('/').map((e) => int.parse(e)).toList();

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 218, 217, 217),
            // offset: Offset(0, 4.0),
            blurRadius: 10.0,
          )
        ],
      ),
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://img.freepik.com/free-vector/award-medal-realistic-composition-with-isolated-image-medal-with-laurel-wreath-blank-background-vector-illustration_1284-66109.jpg?t=st=1721947990~exp=1721951590~hmac=5ac9ae3d622260cfab15b6b754315947d3bd3fb372883c4d5839c97eee312944&w=1380',
                width: 50.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text, style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 250.0,
                    child: Text(subtext, style: const TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
            ],
          ),
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
                      color:  Color.fromARGB(255, 106, 86, 171),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    height: 15.0,
                    width: numbers[0] / numbers[1] * 150.0,
                  ),
                ],
              ),
              const SizedBox(width: 20.0),
              Text(ratio, style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
