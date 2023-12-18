import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthlight/Components/back_button.dart';
import 'package:healthlight/Colors/palete_colors.dart';
import 'package:healthlight/Components/custom_button.dart';
import 'package:healthlight/Components/my_text_field.dart';
import 'package:healthlight/pages/account_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Header(onPress: () {
                  Navigator.pop(context);
                }),
              ],
            ),
            Column(
              children: [
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
            const Spacer(),
            Container(
              height: 500,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.blue4,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Crie sua conta",
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
                        textName: 'FullName',
                        textController: emailController,
                        keyboardType: TextInputType.emailAddress,
                        color: AppColors.white,
                        prefixIcon: const Icon(
                          Icons.person_outlined,
                          color: AppColors.greyLight,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      MyTextField(
                        textName: 'Email',
                        textController: passwordController,
                        keyboardType: TextInputType.number,
                        color: AppColors.white,
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: AppColors.greyLight,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
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
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      CustomButton(
                        textName: 'Create Conta',
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const AccountPage();
                          }));
                        },
                        color: AppColors.blue2,
                        textSize: 18,
                        btnWidth: MediaQuery.of(context).size.width * 0.9,
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
    );
  }
}
