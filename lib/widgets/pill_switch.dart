import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:collection/collection.dart';

class PillSwitch extends StatelessWidget {
  PillSwitch({super.key, required this.items});

  final List<String> items;
  final RxInt index = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(122, 158, 158, 158),
            blurRadius: 5.0,
          ),
        ],
        borderRadius: BorderRadius.circular(20.0)
      ),
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: items.mapIndexed((index, _) => buildPill(index)).toList(),
      ),
    );
  }

  Widget buildPill(int position) {
    return GestureDetector(
      onTap: () => index.value = position,
      child: Obx(() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: index.value == position
            ? const Color.fromARGB(255, 0, 0, 255)
            : Colors.transparent,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 20.0,
        ),
        child: Text(
          items[position],
          style: TextStyle(
            color: index.value == position ? Colors.white : Colors.black,
            fontWeight: index.value == position ? FontWeight.normal : FontWeight.bold,
          ),
        ),
      )),
    );
  }
}
