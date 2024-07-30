import 'package:flutter/material.dart';
import 'package:studitivity/widgets/custom_modal_dialog.dart';

class CalendarPickerDialog extends StatelessWidget {
  const CalendarPickerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomModalDialog(
      leading: const Icon(Icons.close, color: Colors.black),
      title: 'Select',
      children: [
        ListTile(
          title: const Text('gmail', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('yahoo', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('icloud', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('outlook', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
