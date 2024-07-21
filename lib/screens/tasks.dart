import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studitivity/screens/create_task.dart';
import 'package:studitivity/widgets/pill_switch.dart';
import 'package:studitivity/widgets/task_item.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'EDIT',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              PillSwitch(items: const ['Current (5)', 'Completed']),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () => Get.to(const NewTaskView()),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(Icons.add, color: Colors.blue),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(Icons.more_horiz, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Row(
            children: [
              SizedBox(height: 30.0),
              Text(
                'Today',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 20.0),
              Text(
                'Tomorrow',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 20.0),
              Text(
                'Later',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: const [
                TaskItem(
                  priority: 'priority',
                  course: 'Computer Programming',
                  task: 'Build wireframe',
                ),
                TaskItem(
                  priority: 'priority',
                  course: 'Web Development',
                  task: 'Build wireframe',
                ),
                TaskItem(
                  priority: 'priority',
                  course: 'Database Management',
                  task: 'Build prototype',
                ),
                TaskItem(
                  priority: 'priority',
                  course: 'Industrial Expertise',
                  task: 'Personal development report',
                ),
                TaskItem(
                  priority: 'priority',
                  course: 'Research Skills',
                  task: 'Literature review',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
