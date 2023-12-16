import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthlight/Extensions/size_screen.dart';
import 'package:healthlight/Colors/palete_colors.dart';
import 'package:healthlight/Components/custom_button.dart';
import 'package:healthlight/Components/my_text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

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
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    'assets/images/logoHL.png',
                    width: 130,
                    height: 130,
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
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: context.screenHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: context.screenHeight * 0.7,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: AppColors.green1,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(50),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 27, vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Crie sua conta",
                                          style: GoogleFonts.aoboshiOne(
                                              fontSize: 25,
                                              color: AppColors.white),
                                        ),
                                        Text(
                                          "Faça login para começar",
                                          style: GoogleFonts.aoboshiOne(
                                              fontSize: 15,
                                              color: AppColors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  MyTextField(
                                    textName: 'Your Name',
                                    textController: emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    color: AppColors.white,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  MyTextField(
                                    textName: 'Your Email',
                                    textController: passwordController,
                                    keyboardType: TextInputType.number,
                                    color: AppColors.white,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  MyTextField(
                                    textName: 'Your Password',
                                    textController: passwordController,
                                    keyboardType: TextInputType.number,
                                    color: AppColors.white,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  CustomButton(
                                    textName: 'Create Conta',
                                    onTap: () {},
                                    color: AppColors.blue2,
                                    textSize: 18,
                                    btnWidth:
                                        MediaQuery.of(context).size.width * 0.9,
                                    colorText: AppColors.white,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              )
                            ],
                          ),
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
