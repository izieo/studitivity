import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studitivity/widgets/travel_time_picker_dialog.dart';
import 'package:studitivity/widgets/repeat_picker_dialog.dart';
import 'package:studitivity/widgets/calendar_picker_dialog.dart';
import 'package:studitivity/widgets/invitees_picker_dialog.dart';
import 'package:studitivity/widgets/event_alert_picker_dialog.dart';

class NewEventView extends StatefulWidget {
  const NewEventView({super.key});

  @override
  NewEventViewState createState() => NewEventViewState();
}

class NewEventViewState extends State<NewEventView> {
  bool isAllDay = false;

  void _showTravelTimePickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const TravelTimePickerDialog();
      },
    );
  }

  void _showRepeatPickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const RepeatPickerDialog();
      },
    );
  }

  void _showCalendarPickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const CalendarPickerDialog();
      },
    );
  }

  void _showInviteesPickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const InviteesPickerDialog();
      },
    );
  }

  void _showEventAlertPickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const EventAlertPickerDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => Get.back(),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                    'New Event',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () => Get.back(),
                    child: const Text(
                      'Add',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.transparent,
                      ),
                      margin: const EdgeInsets.only(top: 30.0),
                      child: TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                          hintText: "Title",
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.text,
                        autocorrect: false,
                        onChanged: (value) {
                          print('Title: $value');
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.transparent,
                      ),
                      margin: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                      child: TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                          hintText: "Location or URL",
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.multiline,
                        autocorrect: false,
                        maxLines: 3,
                        onChanged: (value) {
                          print('Location: $value');
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('All-day'),
                        Switch(
                          value: isAllDay,
                          onChanged: (value) {
                            setState(() {
                              isAllDay = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Starts'),
                        Row(
                          children: [
                            GestureDetector(
                              child: pill('7 Jul 2024'),
                              onTap: () => showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now().subtract(const Duration(days: 360)),
                                lastDate: DateTime.now().add(const Duration(days: 360)),
                              ),
                            ),
                            GestureDetector(
                              child: pill('16:15'),
                              onTap: () => showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Ends'),
                        Row(
                          children: [
                            GestureDetector(
                              child: pill('7 Jul 2024'),
                              onTap: () => showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now().subtract(const Duration(days: 360)),
                                lastDate: DateTime.now().add(const Duration(days: 360)),
                              ),
                            ),
                            GestureDetector(
                              child: pill('16:15'),
                              onTap: () => showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () => _showTravelTimePickerDialog(context),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Travel Time'),
                            Row(
                              children: [
                                Text('None'),
                                Icon(Icons.unfold_more, size: 18.0)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _showRepeatPickerDialog(context),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Repeat'),
                            Row(
                              children: [
                                Text('Never'),
                                Icon(Icons.unfold_more, size: 18.0)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _showCalendarPickerDialog(context),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Calendar'),
                            Row(
                              children: [
                                Text('gmail'),
                                Icon(Icons.unfold_more, size: 18.0)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _showInviteesPickerDialog(context),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Invitees'),
                            Row(
                              children: [
                                Text('None'),
                                Icon(Icons.unfold_more, size: 18.0)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _showEventAlertPickerDialog(context),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Alert'),
                            Row(
                              children: [
                                Text('None'),
                                Icon(Icons.unfold_more, size: 18.0)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.transparent,
                      ),
                      margin: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                      child: TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                          hintText: "Notes",
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.multiline,
                        autocorrect: false,
                        maxLines: 3,
                        onChanged: (value) {
                          print('Notes: $value');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget pill(String text) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(174, 212, 207, 207),
        borderRadius: BorderRadius.circular(20.0)
      ),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
      child: Text(
        text,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
