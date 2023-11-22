import 'package:flutter/material.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}


// Gesture Detector Button
// Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             GestureDetector(
//               onTap: () => Navigator.pushReplacement(context,
//                   MaterialPageRoute(builder: ((context) {
//                 return const HomePage();
//               }))),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: const Color.fromRGBO(9, 232, 94, 10),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 padding: const EdgeInsets.all(20),
//                 child: const Text(
//                   "Vamos começar... ",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),