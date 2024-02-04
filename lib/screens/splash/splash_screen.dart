import 'package:flutter/material.dart';
import 'components/splash_body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";


  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      // body: Center(
      //   child: Container(
      //     width: 100,
      //     height: 100,
      //     decoration: const BoxDecoration(
      //       color: Colors.blue,
      //       borderRadius: BorderRadius.all(Radius.circular(10)),
      //       boxShadow: [
      //         BoxShadow(
      //           offset: Offset(5, 5),
      //           blurRadius: 10,
      //           color: Colors.white60,
      //         ),
      //         BoxShadow(
      //             offset: Offset(-5, -5),
      //             blurRadius: 10,
      //             color: Colors.blueGrey),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
