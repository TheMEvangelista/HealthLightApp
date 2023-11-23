import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              alignment: const Alignment(-1.3, -1.5),
              child: Container(
                height: 250,
                width: 250,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(200, 81, 203, 32),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Container(
              alignment: const Alignment(-2.3, -1.2),
              child: Container(
                height: 250,
                width: 250,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(200, 81, 203, 32),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 170),
                    child: SizedBox(
                      height: 250,
                      width: 250,
                      child: Image.asset("lib/images/logoHL.png"),
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 100),
                child: Text(
                  "HealLight",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
