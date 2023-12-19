import 'package:flutter/material.dart';
// import 'package:healthlight/Colors/palete_colors.dart';
// import 'package:healthlight/Components/back_button.dart';
import 'package:healthlight/Components/custom_button.dart';
// import 'package:healthlight/Extensions/size_screen.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                textName: "Button",
                onTap: () {},
                color: Colors.blue,
                colorText: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
