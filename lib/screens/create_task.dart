import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:studitivity/widgets/subject_picker_dialog.dart';
import 'package:studitivity/widgets/priority_picker_dialog.dart';
import 'package:studitivity/widgets/task_alert_picker_dialog.dart';
import 'package:studitivity/widgets/repeat_picker_dialog.dart';
import 'package:studitivity/widgets/invitees_picker_dialog.dart';
class NewTaskView extends StatelessWidget {
  const NewTaskView({super.key});

  void _showSubjectPickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const SubjectPickerDialog();
      },
    );
  }

  void _showPriorityPickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const PriorityPickerDialog();
      },
    );
  }

  void _showTaskAlertPickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const TaskAlertPickerDialog();
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
  void _showInviteesPickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const InviteesPickerDialog();
      },
    );
  }

  void _showDatePicker(BuildContext context) async {
    await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                      'New Task',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () => Get.back(),
                      child: const Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => _showSubjectPickerDialog(context),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.transparent,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 5.0,
                    ),
                    margin: const EdgeInsets.only(top: 20.0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subject', style: TextStyle(fontWeight: FontWeight.bold)),
                        Icon(Icons.keyboard_arrow_down, size: 20.0),
                      ],
                    ),
                  ),
                ),
                const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 5),
                      child: Text(
                        '*required',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.transparent,
                  ),
                  margin: const EdgeInsets.only(bottom: 30.0),
                  child: const TextField(
                    decoration: InputDecoration(
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
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.transparent,
                  ),
                  margin: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                  child: const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      hintText: "Description",
                      hintStyle: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.multiline,
                    autocorrect: false,
                    maxLines: 5,
                  ),
                ),
                GestureDetector(
                  onTap: () => _showDatePicker(context),
                  child: Row(
                    children: [
                      const Icon(Icons.calendar_month),
                      const SizedBox(width: 10.0),
                      Text('Due ${DateFormat('dd MMMM, yyyy').format(DateTime.now())}')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => _showPriorityPickerDialog(context),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.transparent,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 5.0,
                    ),
                    margin: const EdgeInsets.only(top: 20.0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.info, size: 20.0, color: Colors.grey),
                            SizedBox(width: 10.0),
                            Text('Priority', style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_down, size: 20.0),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _showTaskAlertPickerDialog(context),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.transparent,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 5.0,
                    ),
                    margin: const EdgeInsets.only(top: 20.0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.notifications, size: 20.0, color: Colors.grey),
                            SizedBox(width: 10.0),
                            Text('Alert', style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_down, size: 20.0),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _showRepeatPickerDialog(context),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.transparent,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 5.0,
                    ),
                    margin: const EdgeInsets.only(top: 20.0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.repeat, size: 20.0, color: Colors.grey),
                            SizedBox(width: 10.0),
                            Text('Repeat', style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_down, size: 20.0),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => _showInviteesPickerDialog(context),
                  child: const Text(
                    'Add Partner',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
