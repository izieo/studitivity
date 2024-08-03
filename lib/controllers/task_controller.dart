import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Task {
  final String course;
  final String task;
  final Color color;
  final int priority;
  var isCompleted = false.obs;

  Task(this.course, this.task, this.color, this.priority);
}

class TaskController extends GetxController {
  var tasks = <Task>[
    Task('Computer Programming', 'Practice for exam', Colors.green, 2),
    Task('Web Development', 'Build wireframe for website', Colors.blue, 2),
    Task('Database Management', 'Create entity relationship diagram', Colors.red, 1),
    Task('Industrial Expertise', 'Complete personal development report', Colors.yellow, 0),
    Task('Research Skills', 'Finish Literature review', Colors.purple, 0),
  ].obs;

  var selectedFilter = 'Today'.obs;

  void updateFilter(String filter) {
    selectedFilter.value = filter;
  }
}
