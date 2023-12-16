import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthlight/Extensions/size_screen.dart';

class CustomButton extends StatelessWidget {
  final String textName;
  final Color? color;
  final Color? colorText;
  final double? textSize;
  final VoidCallback onTap;
  final double? btnWidth;
  final IconData? icon;

  const CustomButton({
    super.key,
    required this.textName,
    required this.onTap,
    this.color,
    this.btnWidth,
    this.colorText,
    this.textSize,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: btnWidth,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(0, context.screenHeight * 0.095),
          backgroundColor: color,
          elevation: 2.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
        child: Center(
          child: Text(
            textName,
            style: GoogleFonts.aoboshiOne(
              color: colorText,
              fontSize: textSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
