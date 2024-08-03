import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studitivity/controllers/block_apps_controller.dart';

class BlockAppsPage extends StatelessWidget {
  const BlockAppsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final BlockAppsController controller = Get.put(BlockAppsController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.blue,
                            size: 24.0,
                          ),
                        ),
                        onTap: () => Get.back(),
                      ),
                      const SizedBox(width: 70.0),
                      const Text(
                        'Block Apps',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Obx(() {
                return Row(
                  children: [
                    Switch(
                      value: controller.blockAll.value,
                      activeColor: Colors.white,
                      activeTrackColor: Colors.green,
                      inactiveThumbColor: Colors.grey[800],
                      onChanged: (bool value) {
                        controller.toggleBlockAll(value);
                      },
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      'Block All Apps',
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                    ),
                  ],
                );
              }),
              const SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search apps',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Expanded(
                child: Obx(() {
                  return ListView.builder(
                    itemCount: controller.appList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const Icon(Icons.apps),
                        title: Text(controller.appList[index]),
                        trailing: Switch(
                          value: controller.appBlockStatus[index],
                          activeColor: Colors.white,
                          activeTrackColor: Colors.green,
                          inactiveThumbColor: Colors.grey[800],
                          onChanged: (bool value) {
                            controller.toggleAppBlockStatus(index, value);
                          },
                        ),
                      );
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
