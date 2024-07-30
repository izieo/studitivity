import 'package:flutter/material.dart';

class CustomModalDialog extends StatelessWidget {
  final String title;
  final double titleFontSize;
  final FontWeight titleFontWeight;
  final List<Widget> children;
  final Widget? leading;
  final Widget? trailing;

  const CustomModalDialog({
    super.key,
    this.title = 'Select', 
    this.titleFontSize = 20.0, //default font size
    this.titleFontWeight = FontWeight.bold, //default font weight
    required this.children,
    this.leading = const Icon(Icons.close, color: Colors.black), //default leading icon
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
                  style: TextStyle(
                    fontSize: titleFontSize,
                    fontWeight: titleFontWeight,
                  ),
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
