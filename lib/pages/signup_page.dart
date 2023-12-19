import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthlight/Components/back_button.dart';
import 'package:healthlight/Colors/palete_colors.dart';
import 'package:healthlight/Components/custom_button.dart';
import 'package:healthlight/Components/my_text_field.dart';
import 'package:healthlight/Extensions/size_screen.dart';
import 'package:healthlight/pages/recovery_password_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  CustomBackButton(),
                ],
              ),
            ),
            Center(
              child: Column(
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blue1,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: context.screenHeight * 0.59,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColors.blue4,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Welcome Back!",
                                    style: GoogleFonts.aoboshiOne(
                                        fontSize: 25, color: AppColors.white),
                                  ),
                                  Text(
                                    "Faça login para começar",
                                    style: GoogleFonts.aoboshiOne(
                                        fontSize: 15, color: AppColors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            MyTextField(
                              textName: 'Fullname',
                              textController: emailController,
                              keyboardType: TextInputType.text,
                              color: AppColors.white,
                              prefixIcon: const Icon(
                                Icons.person_2_outlined,
                                color: AppColors.greyLight,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            MyTextField(
                              textName: 'Email',
                              textController: emailController,
                              keyboardType: TextInputType.emailAddress,
                              color: AppColors.white,
                              prefixIcon: const Icon(
                                Icons.email_outlined,
                                color: AppColors.greyLight,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            MyTextField(
                              textName: 'Password',
                              textController: passwordController,
                              keyboardType: TextInputType.number,
                              color: AppColors.white,
                              prefixIcon: const Icon(
                                Icons.vpn_key_outlined,
                                color: AppColors.greyLight,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            CustomButton(
                              textName: 'Create Account',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const RecoveryPasswordPage();
                                    },
                                  ),
                                );
                              },
                              color: AppColors.blue2,
                              textSize: 23,
                              btnWidth: MediaQuery.of(context).size.width * 0.9,
                              colorText: AppColors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
