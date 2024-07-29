import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateSubjectView extends StatelessWidget {
  const CreateSubjectView({super.key});

  @override
  Widget build(BuildContext context) {
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
                      'New Subject',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
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
                    fontWeight: FontWeight.bold
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(178, 238, 237, 237),
                        blurRadius: 3.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  margin: const EdgeInsets.only(top: 15.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Wrap(
                        alignment: WrapAlignment.spaceAround,
                        spacing: 30.0,
                        runSpacing: 30.0,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildColorPatch(int color) {
    return Container(
      decoration:  BoxDecoration(
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(5.0),
        color: Color(color),
      ),
      width: 45.0,
      height: 45.0,
      // child: const Icon(Icons.check),
    );
  }
}
