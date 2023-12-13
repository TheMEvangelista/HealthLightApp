import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthlight/Extensions/size_screen.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:healthlight/Colors/palete_colors.dart';
import 'package:healthlight/Components/custom_button.dart';
import 'package:healthlight/Components/my_text_field.dart';
// import 'package:healthlight/pages/intro_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "lib/images/bg-Logo.jpg",
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
                  'lib/images/logoHL.png',
                  width: 130,
                  height: 130,
                  alignment: Alignment.bottomCenter,
                ),
                Text(
                  "HealLight",
                  style: GoogleFonts.aoboshiOne(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blue2,
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
                        height: context.screenHeight * 0.63,
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
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Welcome Back!",
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
                                  textName: 'Your email',
                                  textController: _emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  color: AppColors.white,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                MyTextField(
                                  textName: 'Your Password',
                                  textController: _passwordController,
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
                                  textName: 'Login',
                                  onTap: () {},
                                  color: AppColors.white,
                                  textSize: 18,
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
    );
  }
}
