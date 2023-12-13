import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthlight/Colors/palete_colors.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.textController,
    required this.textName,
    this.keyboardType = TextInputType.text,
    this.isObscureText = false,
    this.obscureCharacter = '&',
    this.prefixIcon,
    this.color,
  });
  final String textName;
  final TextEditingController textController;
  final TextInputType? keyboardType;
  final bool? isObscureText;
  final String? obscureCharacter;
  final Widget? prefixIcon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      child: TextFormField(
        controller: textController,
        obscureText: isObscureText!,
        keyboardType: keyboardType,
        obscuringCharacter: obscureCharacter!,
        style: GoogleFonts.aoboshiOne(fontSize: 18),
        decoration: InputDecoration(
          constraints: BoxConstraints(
            maxHeight: height * 0.1,
            maxWidth: width * 0.9,
          ),
          filled: true,
          fillColor: color,
          hintText: textName,
          hintStyle: GoogleFonts.aoboshiOne(fontSize: 18),
          prefixIcon: prefixIcon,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: AppColors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: AppColors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
