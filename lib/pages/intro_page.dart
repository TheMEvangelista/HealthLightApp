import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthlight/Components/custom_button.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "lib/images/logoHL.png",
                    height: 130,
                    width: 130,
                  ),
                  Text(
                    "HealthLight",
                    style: GoogleFonts.aoboshiOne(
                      color: const Color.fromARGB(200, 28, 155, 140),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset("lib/images/Doctors.png"),
                  Text(
                    "Bem-vindo a HealthLight! Aqui voçê vai encontrar o profissional certo para cuidar da sua saúde.",
                    style: GoogleFonts.aoboshiOne(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
              child: CustomButton(
                textName: "Vamos começar...",
              ),
            )
          ],
        ),
      ),
    );
  }
}
