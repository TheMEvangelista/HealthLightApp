import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthlight/Colors/palete_colors.dart';
import 'package:healthlight/Components/back_button.dart';

class RecoveryPasswordPage extends StatelessWidget {
  const RecoveryPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomBackButton(),
            Text(
              "Ôpa, que é isso?\nAqui tá nu, amigo!",
              style: GoogleFonts.aoboshiOne(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
