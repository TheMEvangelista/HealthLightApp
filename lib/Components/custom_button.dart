import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String textName;
  final Color? color;
  final Color? colorText;
  final double? textSize;
  final double? btnWidth;
  final double? btnHeight;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.textName,
    this.color,
    this.btnWidth,
    this.btnHeight,
    this.colorText,
    this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(btnWidth ?? 80, btnHeight ?? 70),
          maximumSize: Size(btnWidth ?? 400, btnHeight ?? 70),
          backgroundColor: color,
          elevation: 1.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        child: Center(
          child: Text(
            textName,
            style: GoogleFonts.montserrat(
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
