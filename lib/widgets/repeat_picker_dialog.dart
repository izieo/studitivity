import 'package:flutter/material.dart';
import 'package:studitivity/widgets/custom_modal_dialog.dart';

class RepeatPickerDialog extends StatelessWidget {
  const RepeatPickerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomModalDialog(
      leading: const Icon(Icons.close, color: Colors.black),
      title: 'Select',
      children: [
        ListTile(
          title: const Text('Never', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Every Day', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Every Week', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Every Month', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Every Year', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
