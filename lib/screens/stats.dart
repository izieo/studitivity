// import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studitivity/screens/achievements.dart';
import 'package:studitivity/widgets/pill_switch.dart';

class StatsView extends StatelessWidget {
  const StatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: Get.back,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.close, size: 24.0, color: Colors.blue),
                ),
              ),
              const Text(
                'My Stats',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(Icons.redo, size: 20.0, color: Colors.blue),
                      SizedBox(height: 5.0),
                      Text(
                        'Share',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Center(child: PillSwitch(items: const ['Week', 'Month', 'Year'])),
          const SizedBox(height: 15.0),
          const Text(
            'Summary',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: buildSummaryCard(Icons.alarm, 'Study', 'Studied for 10 hours'),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: buildSummaryCard(Icons.task, 'Tasks', 'Completed 3 tasks'),
              ),
            ],
          ),
          const SizedBox(height: 25.0),
          GestureDetector(
            onTap: () => Get.to(const Achievements()),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.blue),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                'Achievements',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Column(
                children: [
                  Image.network(
                    'https://img.freepik.com/free-vector/award-medal-realistic-composition-with-isolated-image-medal-with-laurel-wreath-blank-background-vector-illustration_1284-66109.jpg?t=st=1721947990~exp=1721951590~hmac=5ac9ae3d622260cfab15b6b754315947d3bd3fb372883c4d5839c97eee312944&w=1380',
                    width: 100.0,
                  ),
                  const SizedBox(height: 5.0),
                  const Text(
                    'Daily Titan',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10.0),
              Column(
                children: [
                  Image.network(
                    'https://img.freepik.com/free-psd/elegant-badge-isolated_23-2150997688.jpg?t=st=1721948131~exp=1721951731~hmac=9d8afe1b321f70ebd0eeebfcd583d6a99a061ba653b459363be91888bb1bcbd8&w=1380',
                    width: 100.0,
                  ),
                  const SizedBox(height: 5.0),
                  const Text(
                    'Weekly Warrior',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Widget buildSummaryCard(IconData icon, String text, String subtext) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.black),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 24.0,
                color: const Color.fromARGB(255, 97, 44, 220),
              ),
              const SizedBox(width: 10.0),
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Text(
            subtext,
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
