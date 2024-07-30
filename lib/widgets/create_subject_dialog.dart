import 'package:flutter/material.dart';
import 'package:studitivity/widgets/custom_modal_dialog.dart';

class CreateSubjectDialog extends StatelessWidget {
  const CreateSubjectDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomModalDialog(
      trailing: TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text(
          'Save',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.transparent,
          ),
          margin: const EdgeInsets.only(top: 30.0, bottom: 40.0),
          child: TextField(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              hintText: "Subject Name",
              hintStyle: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              border: InputBorder.none,
            ),
            keyboardType: TextInputType.text,
            autocorrect: false,
            onChanged: (value) {
              print('Subject Name: $value');
            },
          ),
        ),
        const Text(
          'Select Colour',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 60.0,
          margin: const EdgeInsets.only(top: 15.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildColorPatch(0xffff0000),
                buildColorPatch(0xff00ff00),
                buildColorPatch(0xff0000ff),
                buildColorPatch(0xffffff00),
                buildColorPatch(0xffff00ff),
                buildColorPatch(0xffabcdef),
                buildColorPatch(0xffdaf7a6),
                buildColorPatch(0xffeb990d),
                buildColorPatch(0xff801ed1),
                buildColorPatch(0xff705983),
                buildColorPatch(0xff7B8CE7),
                buildColorPatch(0xffA07BE7),
                buildColorPatch(0xffD67BE7),
                buildColorPatch(0xffE77BC2),
                buildColorPatch(0xffE7A07B),
                buildColorPatch(0xff344F31),
                buildColorPatch(0xff4A5F5D),
                buildColorPatch(0xff5D4A5F),
                buildColorPatch(0xffB69295),
                buildColorPatch(0xff75137D),
                buildColorPatch(0xffB9F0D4),
                buildColorPatch(0xffB9F0B9),
                buildColorPatch(0xffB22525),
                buildColorPatch(0xff7ADBE9),
                buildColorPatch(0xff4B3359),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }

  Widget buildColorPatch(int color) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(5.0),
        color: Color(color),
      ),
      width: 45.0,
      height: 45.0,
    );
  }
}
