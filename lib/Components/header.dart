import 'package:flutter/material.dart';
import 'package:healthlight/Colors/palete_colors.dart';

class Header extends StatelessWidget {
  final Function() onPress;
  const Header({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          IconButton(
            onPressed: onPress,
            icon: const Icon(
              Icons.arrow_back_sharp,
              color: AppColors.white,
            ),
            style: IconButton.styleFrom(
                elevation: 5,
                backgroundColor: AppColors.blue2.withOpacity(0.9),
                fixedSize: const Size(60, 60),
                shape: const CircleBorder(),
                iconSize: 35,
                hoverColor: AppColors.white.withOpacity(0.5)),
          ),
        ],
      ),
    );
  }
}
