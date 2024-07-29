import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:studitivity/screens/login.dart';
import 'package:flutter/services.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUp() async {
    if (passwordController.text != confirmPasswordController.text) {
      Get.snackbar(
        'Error',
        'Passwords do not match.',
        backgroundColor: Colors.redAccent,
      );
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Get.snackbar(
        'Success',
        'Signup successful! Please login.',
        backgroundColor: Colors.greenAccent,
      );
      Get.offAll(() => Login());
    } on FirebaseAuthException catch (e) {
      String errorMessage;
      if (e.code == 'invalid-email') {
        errorMessage = 'The email address is not valid.';
      } else if (e.code == 'weak-password') {
        errorMessage = 'Password must be at least 6 characters in length.';
      } else if (e.code == 'email-already-in-use') {
        errorMessage = 'The email is already in use.';
      } else {
        errorMessage = 'An unknown error occurred.';
      }
      Get.snackbar(
        'Error',
        errorMessage,
        backgroundColor: Colors.redAccent,
      );
    } catch (e) {
      print("Exception: $e");
      Get.snackbar(
        'Error',
        'An unknown error occurred.',
        backgroundColor: Colors.redAccent,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
          color: const Color.fromARGB(255, 97, 44, 220),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
          alignment: Alignment.center,
          child: SingleChildScrollView(
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
                      child: TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(color: Colors.grey),
                        cursorColor: Colors.grey,
                        keyboardType: TextInputType.emailAddress,
                        autofocus: true,
                        autocorrect: false,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.transparent,
                      ),
                    margin: const EdgeInsets.only(top: 30.0),
                      child: TextField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(color: Colors.grey),
                        cursorColor: Colors.grey,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        obscuringCharacter: '●',
                        autocorrect: false,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.transparent,
                      ),
                    margin: const EdgeInsets.only(top: 30.0),
                      child: TextField(
                        controller: confirmPasswordController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                          hintText: "Enter password again",
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(color: Colors.grey),
                        cursorColor: Colors.grey,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        obscuringCharacter: '●',
                        autocorrect: false,
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        signUp();
                        HapticFeedback.lightImpact();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        margin: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 97, 44, 220),
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        ),
                        child: Text(
                          'Sign up',
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(fontSize: 18.0),
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'I already have an account',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(fontSize: 14.0),
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
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
}
