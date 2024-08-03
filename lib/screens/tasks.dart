import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studitivity/screens/create_task.dart';
import 'package:studitivity/widgets/pill_switch.dart';
import 'package:studitivity/widgets/sort_tasks.dart';
import 'package:studitivity/widgets/task_item.dart';
import 'package:studitivity/screens/profile.dart';
import 'package:studitivity/screens/notification.dart';
import 'package:studitivity/widgets/notification_badge.dart';
import 'package:studitivity/controllers/task_controller.dart'; 

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    final TaskController controller = Get.put(TaskController());

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
                          child: Icon(Icons.search, color: Color.fromARGB(255, 97, 44, 220), size: 24),
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
                          child: Icon(Icons.more_vert, color: Color.fromARGB(255, 97, 44, 220), size: 24,),
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
                    onTap: () => controller.updateFilter('Today'),
                    child: Obx(() => Text(
                      'Today',
                      style: TextStyle(
                        color: controller.selectedFilter.value == 'Today' ? Colors.blue : Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                  const SizedBox(width: 20.0),
                  GestureDetector(
                    onTap: () => controller.updateFilter('Tomorrow'),
                    child: Obx(() => Text(
                      'Tomorrow',
                      style: TextStyle(
                        color: controller.selectedFilter.value == 'Tomorrow' ? Colors.blue : Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                  const SizedBox(width: 20.0),
                  GestureDetector(
                    onTap: () => controller.updateFilter('All'),
                    child: Obx(() => Text(
                      'All',
                      style: TextStyle(
                        color: controller.selectedFilter.value == 'All' ? Colors.blue : Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ],
              ),
              Expanded(
                child: Obx(() => ListView.builder(
                  itemCount: controller.tasks.length,
                  itemBuilder: (context, index) {
                    return Obx(() => TaskItem(
                      priority: controller.tasks[index].priority,
                      course: controller.tasks[index].course,
                      task: controller.tasks[index].task,
                      color: controller.tasks[index].color,
                      isCompleted: controller.tasks[index].isCompleted.value,
                      onChanged: (value) {
                        controller.tasks[index].isCompleted.value = value;
                      },
                    ));
                  },
                )),
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
