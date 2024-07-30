import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horizontal_week_calendar/horizontal_week_calendar.dart';
import 'package:intl/intl.dart';
import 'package:studitivity/screens/create_event.dart';
import 'package:studitivity/screens/profile.dart';
import 'package:studitivity/widgets/event.dart';
import 'package:studitivity/widgets/pill_switch.dart';
import 'package:studitivity/screens/notification.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Color.fromARGB(255, 97, 44, 220), size: 20),
            iconSize: 20, 
          ),
          IconButton(
            onPressed: () => Get.to(const NotificationView()),
            icon: const Icon(Icons.notifications, color: Color.fromARGB(255, 97, 44, 220), size: 20),
            iconSize: 20,
          ),
        ],
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Get.to(const ProfileView()),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://media.licdn.com/dms/image/C5603AQEoy5iwuDZxDA/profile-displayphoto-shrink_400_400/0/1649584891937?e=1726704000&v=beta&t=2jTi9_v7RypOpiLM0IVoFJYTGgapRboF595y6bUAFdU'
              ),
              radius: 20.0,
            ),
          ),
        ),
        title: Center(
          child: Text(
            '${DateFormat.MMMM().format(DateTime.now())}, ${DateTime.now().year}',
            style: const TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: Get.height * 0.17,
            margin: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(122, 158, 158, 158),
                  blurRadius: 5.0,
                ),
              ],
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: Card(
              color: Colors.white,
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Column(
                children: [
                  PillSwitch(items: const ['Week', 'Month']),
                  HorizontalWeekCalendar(
                    minDate: DateTime.now(),
                    maxDate: DateTime.now().add(const Duration(days: 180)),
                    initialDate: DateTime.now(),
                    activeBackgroundColor: Colors.white,
                    inactiveBackgroundColor: Colors.white,
                    disabledBackgroundColor: Colors.white,
                    activeTextColor: Colors.blue,
                    inactiveTextColor: Colors.black,
                    disabledTextColor: Colors.black,
                    showTopNavbar: false,
                  ),
                ],
              ),
            ),
          ),
          CalendarEvent(
            startTime: DateTime.now(),
            endTime: DateTime.now(),
            course: 'Cloud Based Project',
            type: 'Lab'
          ),
          CalendarEvent(
            startTime: DateTime.now(),
            endTime: DateTime.now(),
            course: 'Web Development',
            type: 'Lecture'
          ),
          CalendarEvent(
            startTime: DateTime.now(),
            endTime: DateTime.now(),
            course: 'Computer Programming',
            type: 'Lab'
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        child: FloatingActionButton(
          onPressed: () => Get.to(const NewEventView()),
          backgroundColor:  const Color.fromARGB(255, 97, 44, 220),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
