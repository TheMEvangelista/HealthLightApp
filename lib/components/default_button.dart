import 'package:flutter/material.dart';

import '../colors/palete_colors.dart';
import '../configs/size_config.dart';

class ButtonComponent extends StatelessWidget {
  final String text;
  final Function() press;

  const ButtonComponent({
    super.key,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: TextButton(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(primaryColor),
            foregroundColor: MaterialStatePropertyAll(textColor)),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getScreenHeight(context, 18),
          ),
        ),
      ),
    );
  }
}
