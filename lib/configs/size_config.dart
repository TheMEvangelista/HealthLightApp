import 'package:flutter/material.dart';

// class Responsive extends StatelessWidget {
//   final Widget desktop;
//   final Widget tablet;
//   final Widget mobile;

//   const Responsive({
//     super.key,
//     required this.desktop,
//     required this.tablet,
//     required this.mobile,
//   });

//   static bool isDesktop(BuildContext context) =>
//       MediaQuery.of(context).size.width >= 1100;
//   static bool isTablet(BuildContext context) =>
//       MediaQuery.of(context).size.width < 1100 &&
//       MediaQuery.of(context).size.width >= 650;
//   static bool isMobile(BuildContext context) =>
//       MediaQuery.of(context).size.width < 650;

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constraints) {
//       if (constraints.maxWidth >= 1100) {
//         return desktop;
//       } else if (constraints.maxWidth >= 650) {
//         return tablet;
//       } else {
//         return mobile;
//       }
//     });
//   }
// }

double getScreenHeight(BuildContext context, double inputHeight) {
  double height = MediaQuery.of(context).size.height;
  return (inputHeight / 812.0) * height;
}

double getScreenWidth(BuildContext context, double inputWidth) {
  double width = MediaQuery.of(context).size.width;
  return (inputWidth / 375.0) * width;
}
