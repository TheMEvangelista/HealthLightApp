import 'package:flutter/material.dart';
import 'package:healthlight/Colors/palete_colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: AppColors.blue4,
        elevation: 1,
        focusElevation: 1,
        hoverElevation: 1,
        hoverColor: AppColors.blue2,
        shape: const CircleBorder(
            side: BorderSide(width: 1, color: AppColors.transparent)),
        child: const Icon(
          Icons.arrow_back_outlined,
          color: AppColors.white,
        ),
      ),
    );
  }
}
