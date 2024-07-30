import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewGroupView extends StatelessWidget {
  const NewGroupView({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt groupValue = 0.obs;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => Get.back(),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text(
                      'New Group',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.transparent,
                  ),
                  margin: const EdgeInsets.only(top: 30.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      hintText: "Name",
                      hintStyle: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.text,
                    autocorrect: false,
                    onChanged: (value) {
                      print('Group name: $value');
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.transparent,
                  ),
                  margin: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      hintText: "Description",
                      hintStyle: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.done,
                    autocorrect: false,
                    maxLines: 5,
                    onChanged: (value) {
                      print('Group Description: $value');
                    },
                  ),
                ),
                const Text(
                  'Who can access this group?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Obx(() => RadioGroup(groupValue: groupValue.value, onChanged: (value) {
                  groupValue.value = value;
                })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RadioGroup extends StatelessWidget {
  const RadioGroup({
    super.key,
    required this.groupValue,
    required this.onChanged,
  });

  final int groupValue;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonGroup(
          icon: Icons.public,
          text: 'Public',
          subtext: 'Anyone can view and join the group',
          value: 0,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        ButtonGroup(
          icon: Icons.group,
          text: 'Friends',
          subtext: 'Only friends and people with the link can join the group',
          value: 1,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        ButtonGroup(
          icon: Icons.lock,
          text: 'Locked',
          subtext: 'Only you can join the group',
          value: 2,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
      ],
    );
  }
}

class ButtonGroup extends StatelessWidget {
  const ButtonGroup({
    super.key,
    required this.icon,
    required this.text,
    required this.subtext,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  final IconData icon;
  final String text;
  final String subtext;
  final int value;
  final int groupValue;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.grey,
      ),
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Icon(icon, size: 40.0),
                const SizedBox(width: 5.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                      const SizedBox(height: 5.0),
                      Text(subtext),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 5.0),
          Radio<int>(
            value: value,
            groupValue: groupValue,
            activeColor: Colors.black,
            onChanged: (value) {
              if (value != null) {
                onChanged(value);
              }
            },
          ),
        ],
      ),
    );
  }
}
