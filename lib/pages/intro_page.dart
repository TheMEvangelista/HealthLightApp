import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthlight/Colors/palete_colors.dart';
import 'package:healthlight/Components/custom_button.dart';
import 'package:healthlight/pages/signin_page.dart';
import 'package:healthlight/pages/signUp_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logoHL.png',
                    width: 125,
                    height: 125,
                    alignment: Alignment.bottomCenter,
                  ),
                  Text(
                    "HealLight",
                    style: GoogleFonts.montserrat(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blue1,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 2),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/images/Doctors.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                'Bem-vindo a HealLight! Aqui você vai encontrar o profissional certo para cuidar da sua saúde.',
                style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blue2),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 5, left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    textName: "Sign In",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SignInPage();
                          },
                        ),
                      );
                    },
                    textSize: 20,
                    btnWidth: 195,
                    color: AppColors.blue2,
                    colorText: AppColors.white,
                  ),
                  CustomButton(
                    textName: "Sign Up",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SignUpPage();
                          },
                        ),
                      );
                    },
                    textSize: 20,
                    btnWidth: 195,
                    colorText: AppColors.blue2,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
