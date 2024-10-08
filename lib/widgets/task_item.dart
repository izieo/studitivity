import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    this.priority = 1,
    required this.course,
    required this.task,
    required this.color,
    required this.isCompleted,
    required this.onChanged,
  });

  final int priority;
  final String course;
  final String task;
  final Color color;
  final bool isCompleted;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    String priorityText = '';
    if (priority == 1) {
      priorityText = '!';
    } else if (priority == 2) {
      priorityText = '!!';
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => onChanged(!isCompleted),
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: isCompleted ? Colors.grey : color,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: isCompleted
                  ? const Icon(Icons.check, color: Colors.white)
                  : Text(
                      priorityText,
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
            ),
          ),
          const SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                course,
                style: const TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                task,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
