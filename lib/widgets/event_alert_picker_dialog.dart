import 'package:flutter/material.dart';
import 'package:studitivity/widgets/custom_modal_dialog.dart';

class EventAlertPickerDialog extends StatelessWidget {
  const EventAlertPickerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomModalDialog(
      leading: const Icon(Icons.close, color: Colors.black),
      title: 'Select',
      children: [
        ListTile(
          title: const Text('At time of event', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('5 minutes before', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('30 minutes before', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('1 hour before', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('1 day before', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('2 days before', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('1 week before', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
