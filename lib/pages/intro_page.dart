import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthlight/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Image.asset(
                'lib/images/logoHL.png',
                height: 125,
                width: 125,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "HealthLight",
              style: GoogleFonts.aoboshiOne(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(200, 81, 203, 32),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: Image.asset(
                'lib/images/Doctors.png',
                height: 250,
                width: 370,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Bem-vindo a HealthLight! Aqui voçê vai encontrar o profissional certo para cuidar da sua saúde.",
              style: GoogleFonts.aoboshiOne(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: ((context) {
                  return const HomePage();
                }))),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(200, 81, 203, 32),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Vamos começar... ",
                    style: GoogleFonts.aoboshiOne(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

// GestureDetector(
                
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: const Color.fromRGBO(9, 232, 94, 10),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   padding: const EdgeInsets.all(20),
//                   child: const Text(
//                     "Vamos começar... ",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
