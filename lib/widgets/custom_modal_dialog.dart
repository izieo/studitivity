import 'package:flutter/material.dart';

class CustomModalDialog extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final Widget? leading;
  final Widget? trailing;

  const CustomModalDialog({
    super.key,
    required this.title,
    required this.children,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: leading ?? const SizedBox(width: 24.0),
                ),
                const Spacer(),
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                  },
                  child: trailing ?? const SizedBox(width: 24.0),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            const Divider(),
            ...children,
          ],
        ),
      ),
    );
  }
}
