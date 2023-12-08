import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String textName;

  const CustomButton({super.key, required this.textName});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 5,
        minimumSize: const Size.fromHeight(60),
        backgroundColor: const Color.fromARGB(200, 0, 219, 114),
      ),
      child: Text(
        textName,
        style: GoogleFonts.aoboshiOne(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
