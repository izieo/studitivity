import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarEvent extends StatelessWidget {
  const CalendarEvent({
    super.key,
    required this.startTime,
    required this.endTime,
    required this.course,
    required this.type,
  });

  final DateTime startTime;
  final DateTime endTime;
  final String course;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  DateFormat.Hm().format(startTime),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  DateFormat.Hm().format(startTime),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purpleAccent,
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Icon(
                Icons.calendar_month_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0
                  ),
                ),
                Text(
                  type,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
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