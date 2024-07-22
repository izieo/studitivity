import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderTasks extends StatelessWidget {
  const OrderTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          shadowContainer(Column(
            children: [
              const Text(
                'Sort tasks by:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              shadowContainer(
                const Center(
                  child: Text(
                    'Due date',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              shadowContainer(
                const Center(
                  child: Text(
                    'Subject',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              shadowContainer(
                const Center(
                  child: Text(
                    'Priority',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )),
          InkWell(
            onTap: () => Get.back(),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Cancel',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0)
        ],
      ),
    );
  }

  Widget shadowContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(122, 158, 158, 158),
            blurRadius: 5.0,
          ),
        ],
        borderRadius: BorderRadius.circular(20.0)
      ),
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      width: Get.width,
      child: child,
    );
  }
}
