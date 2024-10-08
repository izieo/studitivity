import 'package:flutter/material.dart';
import 'package:studitivity/widgets/create_subject_dialog.dart';
import 'package:studitivity/widgets/custom_modal_dialog.dart';

class SubjectPickerDialog extends StatelessWidget {
  const SubjectPickerDialog({super.key});

  void _showCreateSubjectDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const CreateSubjectDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomModalDialog(
      trailing: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: IconButton(
          onPressed: () {
          },
          icon: const Icon(Icons.search, color: Colors.blue),
        ),
      ),
      children: [
        ListTile(
          leading: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffff0000),
            ),
            width: 10.0,
            height: 10.0,
          ),
          title: const Text('Computer Programming', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff0000ff),
            ),
            width: 10.0,
            height: 10.0,
          ),
          title: const Text('Web Development', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff00ff00),
            ),
            width: 10.0,
            height: 10.0,
          ),
          title: const Text('Research Skills', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffff00ff),
            ),
            width: 10.0,
            height: 10.0,
          ),
          title: const Text('Database Management', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff00ffff),
            ),
            width: 10.0,
            height: 10.0,
          ),
          title: const Text('Industrial Expertise', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        const SizedBox(height: 20.0),
        GestureDetector(
          onTap: () => _showCreateSubjectDialog(context),
          child: const Text(
            'Create Subject',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
