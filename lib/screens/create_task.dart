import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:studitivity/screens/subjects.dart';

class NewTaskView extends StatelessWidget {
  const NewTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                    'New task',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
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
                onTap: () => Get.to(const SubjectsView()),
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
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Subject', style: TextStyle(fontWeight: FontWeight.bold)),
                      Icon(Icons.arrow_forward_ios, size: 14.0),
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
                  onChanged: (value) {
                    print('Description: $value');
                  },
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.calendar_month),
                  const SizedBox(width: 10.0),
                  Text('Due ${DateFormat('dd MMMM, yyyy').format(DateTime.now())}')
                ],
              ),
              Container(
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
                        Text('Low', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, size: 14.0),
                  ],
                ),
              ),
              Container(
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
                        Text('On due date, 12:00', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, size: 14.0),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
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
    );
  }
}
