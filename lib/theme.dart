import 'package:flutter/material.dart';
import 'package:medical_app/colors/palete_colors.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: bgColor,
    fontFamily: "AoboshiOne",
    visualDensity: VisualDensity.adaptivePlatformDensity,
    inputDecorationTheme: inputDecorationTheme(),
    appBarTheme: appBarTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: primaryColor),
    gapPadding: 10,
  );

  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    border: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: bgColor,
    centerTitle: true,
    elevation: 0,
    scrolledUnderElevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
        fontSize: 20, color: Color(0xff2b2d42), fontFamily: "AoboshiOne"),
  );
}
