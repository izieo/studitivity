import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.purple,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.local_fire_department,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10.0),
            Text(
              'Studitivity',
              style: GoogleFonts.lato(
                textStyle: const TextStyle(fontSize: 36.0),
                color: Colors.white,
              ),
            ),
          ],
        ),
      )
    );
  }
}
