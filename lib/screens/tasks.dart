import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studitivity/screens/create_task.dart';
import 'package:studitivity/widgets/pill_switch.dart';
import 'package:studitivity/widgets/sort_tasks.dart';
import 'package:studitivity/widgets/task_item.dart';
import 'package:studitivity/screens/profile.dart';
import 'package:studitivity/screens/notification.dart';
import 'package:studitivity/widgets/notification_badge.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  TaskViewState createState() => TaskViewState();
}

class TaskViewState extends State<TaskView> {
  List<Task> tasks = [
    Task('Computer Programming', 'Practice for exam', Colors.green, 2),
    Task('Web Development', 'Build wireframe for website', Colors.blue, 2),
    Task('Database Management', 'Create entity relationship diagram', Colors.red, 1),
    Task('Industrial Expertise', 'Complete personal development report', Colors.yellow, 0),
    Task('Research Skills', 'Finish Literature review', Colors.purple, 0),
  ];

  String selectedFilter = 'Today';

  void updateFilter(String filter) {
    setState(() {
      selectedFilter = filter;
    });
  }

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
                      const SizedBox(width: 5.0),
                      InkWell(
                        onTap: () => Get.to(const NotificationView()),
                        child: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: NotificationBadge(),
                        ),
                      ),
                      const SizedBox(width: 5.0),
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
              PillSwitch(items: const ['Current (5)', 'Completed']),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => updateFilter('Today'),
                    child: Text(
                      'Today',
                      style: TextStyle(
                        color: selectedFilter == 'Today' ? Colors.blue : Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  GestureDetector(
                    onTap: () => updateFilter('Tomorrow'),
                    child: Text(
                      'Tomorrow',
                      style: TextStyle(
                        color: selectedFilter == 'Tomorrow' ? Colors.blue : Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  GestureDetector(
                    onTap: () => updateFilter('All'),
                    child: Text(
                      'All',
                      style: TextStyle(
                        color: selectedFilter == 'All' ? Colors.blue : Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    return TaskItem(
                      priority: tasks[index].priority,
                      course: tasks[index].course,
                      task: tasks[index].task,
                      color: tasks[index].color,
                      isCompleted: tasks[index].isCompleted,
                      onChanged: (value) {
                        setState(() {
                          tasks[index].isCompleted = value;
                        });
                      },
                    );
                  },
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

class Task {
  final String course;
  final String task;
  final Color color;
  final int priority;
  bool isCompleted;

  Task(this.course, this.task, this.color, this.priority, {this.isCompleted = false});
}
