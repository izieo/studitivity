import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horizontal_week_calendar/horizontal_week_calendar.dart';
import 'package:studitivity/widgets/event.dart';
import 'package:studitivity/widgets/pill_switch.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
