import 'package:healthlight/pages/login_page.dart';
import 'package:healthlight/size_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: const Alignment(-1.35, -1.35),
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                color: Color.fromARGB(200, 81, 203, 32),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Container(
            alignment: const Alignment(-2, -1.1),
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                color: Color.fromARGB(200, 81, 203, 32),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: context.percentHeight(0.1),
                ),
                Image.asset("lib/images/logoHL.png"),
                Text(
                  "HealthLight",
                  style: GoogleFonts.aoboshiOne(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Image.asset("lib/images/Doctors.png"),
                Text(
                  "Bem-vindo a HealthLight! Aqui voçê vai encontrar o profissional certo para cuidar da sua saúde.",
                  style: GoogleFonts.aoboshiOne(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: ((context) {
                        return const LoginPage();
                      }))),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(9, 232, 94, 10),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: const Text(
                          "Vamos começar... ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
