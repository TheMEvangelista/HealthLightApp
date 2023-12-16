import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthlight/Colors/palete_colors.dart';
import 'package:healthlight/Components/custom_button.dart';
import 'package:healthlight/Extensions/size_screen.dart';
import 'package:healthlight/pages/signin_page.dart';
import 'package:healthlight/pages/signup_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/images/Background3.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 80),
                  Image.asset(
                    'assets/images/logoHL.png',
                    width: 125,
                    height: 125,
                    alignment: Alignment.bottomCenter,
                  ),
                  Text(
                    "HealLight",
                    style: GoogleFonts.aoboshiOne(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blue1,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: context.screenHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Spacer(flex: 2),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset("assets/images/Doctors.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Bem-vindo a HealLight! Aqui você vai encontrar o profissional certo para cuidar da sua saúde.',
                            style: GoogleFonts.aoboshiOne(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColors.blue1),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 7,
                            right: 7,
                            bottom: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomButton(
                                textName: "Sign In",
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const SignInPage();
                                  }));
                                },
                                textSize: 20,
                                btnWidth: 200,
                                color: AppColors.green1,
                                colorText: AppColors.white,
                              ),
                              CustomButton(
                                textName: "Sign Up",
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const SignUpPage();
                                  }));
                                },
                                textSize: 20,
                                btnWidth: 200,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
