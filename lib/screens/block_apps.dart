import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlockAppsPage extends StatefulWidget {
  const BlockAppsPage({super.key});

  @override
  BlockAppsPageState createState() => BlockAppsPageState();
}

class BlockAppsPageState extends State<BlockAppsPage> {
  bool _blockAll = false; 
  List<bool> _appBlockStatus = [false, false, false, false, false, false]; 

  @override
  Widget build(BuildContext context) {
    final List<String> appList = [
      'WhatsApp',
      'Facebook',
      'Instagram',
      'Twitter',
      'Snapchat',
      'YouTube',
    ];

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
                            color: Color.fromARGB(255, 97, 44, 220),
                            size: 20.0,
                          ),
                        ),
                        onTap: () => Get.back(),
                      ),
                      const SizedBox(width: 10.0),
                      const Text(
                        'Block Apps',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 97, 44, 220),
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
                        color: Color.fromARGB(255, 97, 44, 220),
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Switch(
                    value: _blockAll,
                    onChanged: (bool value) {
                      setState(() {
                        _blockAll = value;
                        _appBlockStatus = List<bool>.filled(appList.length, value);
                      });
                    },
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    'Block All Apps',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                  ),
                ],
              ),
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
                child: ListView.builder(
                  itemCount: appList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.apps), 
                      title: Text(appList[index]),
                      trailing: Switch(
                        value: _appBlockStatus[index],
                        onChanged: (bool value) {
                          setState(() {
                            _appBlockStatus[index] = value;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
