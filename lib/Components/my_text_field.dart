import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          fillColor: const Color.fromRGBO(13, 71, 161, 1),
          filled: true,
        ),
      ),
    );
  }
}

// final usernameController = TextEditingController();
// final passwordController = TextEditingController();

// MyTextField(controller: usernameController,
// hintText: "User Name", obscureText: false,);
// MyTextField(controller: passwordController,
// hintText: "Password", obscureText: true,);
