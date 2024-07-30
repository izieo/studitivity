import 'package:flutter/material.dart';
import 'package:studitivity/widgets/custom_modal_dialog.dart';

class InviteesPickerDialog extends StatelessWidget {
  const InviteesPickerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomModalDialog(
      leading: const Icon(Icons.close, color: Colors.black),
      title: 'Select',
      children: [
        ListTile(
          title: const Text('benjamin@gmail.com', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('dara@yahoo.com', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('abiodun@icloud.com', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('jerry@outlook.com', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
