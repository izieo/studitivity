import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studitivity/screens/calendar.dart';
import 'package:studitivity/screens/group.dart';
import 'package:studitivity/screens/tasks.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt index = 0.obs;

    return Scaffold(
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: index.value,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: (value) => index.value = value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done_all_rounded),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Study',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_rounded),
            label: 'Statistics',
          ),
        ],
      )),
      body: Obx(() => SafeArea(
        child: getChild(index.value),
      )),
    );
  }

  Widget getChild(int index) {
    switch (index) {
      case 0:
        return const CalendarView();
      case 1:
        return const TaskView();
      case 2:
        return const GroupsView();
      case 3:
      default:
        return Container(color: Colors.blue);
    }
  }
}