import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 80, right: 80, top: 10),
          child: Image.asset("lib/images/logoHL.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Image.asset("lib/images/logoDoctors.png"),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Text(
            "Bem-vindo ao HealthLight! Aqui voçê vai encontrar o profissional certo para cuidar da sua saúde.",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 25),
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
      ]),
    );
  }
}
