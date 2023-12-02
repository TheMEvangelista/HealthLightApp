import 'package:flutter/material.dart';
// import 'package:healthlight/pages/intro_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       backgroundColor: Colors.blue,
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Container(
              width: screenWidth,
              height: 350,
              decoration: const BoxDecoration(
                color: Color.fromARGB(200, 81, 203, 32),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text("Create your account"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: ((context) {
                  //     return const IntroPage();
                  //   })),
                  // );

