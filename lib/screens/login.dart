import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studitivity/screens/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.lightBlueAccent,
                        child: Icon(
                          Icons.local_fire_department,
                          size: 15.0,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Text(
                        'Studitivity',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(fontSize: 18.0),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.transparent,
                    ),
                    margin: const EdgeInsets.only(top: 30.0),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                        hintText: "Email",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.grey),
                      cursorColor: Colors.grey,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.transparent,
                    ),
                    margin: const EdgeInsets.only(top: 30.0),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.grey),
                      cursorColor: Colors.grey,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      obscuringCharacter: '●',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      margin: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 97, 44, 220),
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      ),
                      child: Text(
                        'Login',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(fontSize: 18.0),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Forgotten password?',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(fontSize: 18.0),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Get.to(const Signup()),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  margin: const EdgeInsets.only(bottom: 40.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(89, 68, 162, 255),
                    border: Border.all(
                      color: const Color.fromARGB(255, 97, 44, 220),
                      width: 1.0
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                  ),
                  child: Text(
                    'Create new account',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(fontSize: 16.0),
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
