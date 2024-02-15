import 'package:flutter/material.dart';

import '../../../configs/size_config.dart';
import '../../../components/form_fields.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: SizedBox(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getScreenWidth(context, 20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: sizeHeight * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: getScreenHeight(context, 28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Faça login novamente para acessar sua conta.",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: sizeHeight * 0.20),
                const FormFields(),
                SizedBox(height: sizeHeight * 0.18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: getScreenHeight(context, 18)),
                    ),
                    Text(
                      "Create Account",
                      style: TextStyle(
                          fontSize: getScreenHeight(context, 18),
                          color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
