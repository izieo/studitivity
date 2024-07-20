import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:studitivity/screens/calendar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.blue),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add, color: Colors.blue),
          ),
        ],
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: Container(
          padding: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://media.licdn.com/dms/image/C5603AQEoy5iwuDZxDA/profile-displayphoto-shrink_400_400/0/1649584891937?e=1726704000&v=beta&t=2jTi9_v7RypOpiLM0IVoFJYTGgapRboF595y6bUAFdU'
            ),
            radius: 20.0,
          ),
        ),
        title: Center(
          child: Text(
            '${DateFormat.MMMM().format(DateTime.now())}, ${DateTime.now().year}',
            style: const TextStyle(color: Colors.blue),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
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
      ),
      body: const SafeArea(
        child: CalendarView(),
      ),
    );
  }
}