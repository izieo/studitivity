import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

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
              size: 20.0,
            ),
          ),
        ),
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: ListView(
          children: const [
            NotificationCard(
              icon: Icons.alarm,
              title: 'Earn the Bookwarm Award',
              subtitle: 'Complete 1 more 20 minutes focus session to earn the bookwarm award',
              time: '30 minutes ago',
              color: 0xff612cdb,
            ),
            NotificationCard(
              icon: Icons.notifications,
              title: 'New Study Group Invite',
              subtitle: 'You have been invited to join the Math Study Group',
              time: '10 minutes ago',
              color: 0xffaaaaff,
            ),
            NotificationCard(
              icon: Icons.emoji_events,
              title: 'New Achievement',
              subtitle: 'Congratulations! You\'ve earned the daily titan award for completing all daily tasks',
              time: '1 hour ago',
              color: 0xff612cdb,
            ),
            NotificationCard(
              icon: Icons.calendar_month,
              title: 'Task Reminder',
              subtitle: 'Your task `Database Management: Task 1` is due tomorrow',
              time: '3 hours ago',
              color: 0xff11ff11,
            ),
            NotificationCard(
              icon: Icons.alarm,
              title: 'Timer Completed',
              subtitle: 'Your 45-minute focus session is over',
              time: '30 minutes ago',
              color: 0xff612cdb,
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.color,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final String time;
  final int color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.black),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(122, 158, 158, 158),
            blurRadius: 5.0,
            offset: Offset(0, 5),
          ),
        ],
      ),
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Color(color), size: 30.0),
          const SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 5.0),
              SizedBox(
                width: 320.0,
                child: Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Color.fromARGB(255, 123, 123, 123),
                  ),
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                time,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Color.fromARGB(255, 123, 123, 123),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
