import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studitivity/screens/create_task.dart';
import 'package:studitivity/widgets/pill_switch.dart';
import 'package:studitivity/widgets/sort_tasks.dart';
import 'package:studitivity/widgets/task_item.dart';
import 'package:studitivity/screens/profile.dart'; 

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Get.to(const ProfileView()),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://media.licdn.com/dms/image/C5603AQEoy5iwuDZxDA/profile-displayphoto-shrink_400_400/0/1649584891937?e=1726704000&v=beta&t=2jTi9_v7RypOpiLM0IVoFJYTGgapRboF595y6bUAFdU',
                      ),
                      radius: 20.0,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Tasks',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(Icons.search, color: Colors.blue),
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.to(const NewTaskView()),
                        child: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(Icons.add, color: Colors.blue),
                        ),
                      ),
                      InkWell(
                        onTap: () => showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                          ),
                          builder: (context) {
                            return const Wrap(children: [OrderTasks()]);
                          },
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(Icons.more_horiz, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              PillSwitch(items: const ['Current (5)', 'Completed']),
              const SizedBox(height: 15.0),
              const Row(
                children: [
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
        ),
      ),
    );
  }
}
