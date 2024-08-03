import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studitivity/screens/create_subject.dart';

class SubjectsView extends StatelessWidget {
  const SubjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: const Icon(Icons.arrow_back_ios, color: Colors.blue),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          children: [
            Text(
              'Edit',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.blue,
              ),
            ),
            Flexible(
              child: Center(
                child: Text(
                  'Subjects',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(6.0),
            child: Icon(Icons.search, color: Colors.blue),
          ),
          GestureDetector(
            onTap: () => Get.to(const CreateSubjectView()),
            child: const Padding(
              padding: EdgeInsets.all(6.0),
              child: Icon(Icons.add, color: Colors.blue),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            children: [
              buildSubjectTab('Computer Programming', 0xffff0000),
              buildSubjectTab('Web Development', 0xff0000ff),
              buildSubjectTab('Research Skills', 0xff00ff00),
              buildSubjectTab('Database Management', 0xffff00ff),
              buildSubjectTab('Industrial Expertise', 0xff00ffff),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSubjectTab(String subject, int color) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.transparent,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 5.0,
      ),
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(color),
            ),
            width: 10.0,
            height: 10.0,
          ),
          const SizedBox(width: 5.0),
          Text(subject, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
