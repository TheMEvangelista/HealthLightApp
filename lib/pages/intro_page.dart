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
              alignment: const Alignment(-1.1, -1.6),
              child: Container(
                height: 250,
                width: 250,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(188, 92, 16, 224),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Container(
              alignment: const Alignment(-1.8, -1.1),
              child: Container(
                height: 250,
                width: 250,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(200, 92, 16, 224),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Container(

            ),
          ],
        ),
      ),
    );
  }
}
