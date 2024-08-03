import 'package:flutter/material.dart';

class NotificationBadge extends StatelessWidget {
  final int notificationCount;
  final double iconSize;
  final Color iconColor;

  const NotificationBadge({
    super.key,
    this.notificationCount = 5,
    this.iconSize = 30.0,
    this.iconColor = const Color.fromARGB(255, 97, 44, 220),
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(Icons.notifications, color: iconColor, size: iconSize),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            constraints: BoxConstraints(
              minWidth: iconSize * 0.5,
              minHeight: iconSize * 0.5,
            ),
            child: Text(
              '$notificationCount',
              style: TextStyle(
                color: Colors.white,
                fontSize: iconSize * 0.35,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
