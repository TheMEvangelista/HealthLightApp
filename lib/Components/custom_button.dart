import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String textName;
  final Color? color;
  final Color? colorText;
  final double? textSize;
  final VoidCallback onTap;
  final double? bWidth;
  final double? bHeight;

  const CustomButton({
    super.key,
    required this.textName,
    required this.onTap,
    this.color,
    this.bWidth,
    this.bHeight,
    this.colorText,
    this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(
            bWidth ?? 100,
            bHeight ?? MediaQuery.of(context).size.height * 0.085,
          ),
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

    // return Material(
    //   child: InkWell(
    //     onTap: onTap,
    //     borderRadius: BorderRadius.circular(20),
    //     child: Ink(
    //       padding: const EdgeInsets.symmetric(
    //         horizontal: 70.0,
    //         vertical: 18.0,
    //       ),
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(20),
    //         color: color,
    //       ),
    //       child: Text(
    //         textName,
    //         style: GoogleFonts.aoboshiOne(
    //           fontWeight: FontWeight.w700,
    //           color: AppColors.white,
    //           fontSize: 16.0,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
