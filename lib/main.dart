import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studitivity/controllers/app_controller.dart';
import 'package:studitivity/screens/splash.dart';

void main() {
  Get.put(AppController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Studitivity',
      theme: ThemeData(
        // textTheme: GoogleFonts.robotoTextTheme(
        //   Theme.of(context).textTheme,
        // ),
        primarySwatch: Colors.purple,
      ),
      home: const Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
