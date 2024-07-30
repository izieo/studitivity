import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studitivity/screens/create_task.dart';
import 'package:studitivity/widgets/pill_switch.dart';
import 'package:studitivity/widgets/sort_tasks.dart';
import 'package:studitivity/widgets/task_item.dart';
import 'package:studitivity/screens/profile.dart'; 
import 'package:studitivity/screens/notification.dart';

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
                          child: Icon(Icons.search, color: Color.fromARGB(255, 97, 44, 220), size: 20),
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.to(const NotificationView()),
                        child: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(Icons.notifications, color: Color.fromARGB(255, 97, 44, 220), size: 20),
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
                          child: Icon(Icons.more_vert, color: Color.fromARGB(255, 97, 44, 220), size: 20,),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              PillSwitch(items: const ['Current', 'Completed']),
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
                    'All',
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
                      priority: 2, //high priority
                      course: 'Computer Programming',
                      task: 'Build wireframe',
                      color: Colors.green,
                    ),
                    TaskItem(
                      priority: 2, //high priority
                      course: 'Web Development',
                      task: 'Build wireframe',
                      color: Colors.blue,
                    ),
                    TaskItem(
                      priority: 1, //medium priority
                      course: 'Database Management',
                      task: 'Build prototype',
                      color: Colors.red,
                    ),
                    TaskItem(
                      priority: 0, //low priority,
                      course: 'Industrial Expertise',
                      task: 'Personal development report',
                      color: Colors.yellow,
                    ),
                    TaskItem(
                      priority: 0, //low priority
                      course: 'Research Skills',
                      task: 'Literature review',
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        child: FloatingActionButton(
          onPressed: () => Get.to(const NewTaskView()),
          backgroundColor: const Color.fromARGB(255, 97, 44, 220),
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
