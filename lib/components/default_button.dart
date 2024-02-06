import 'package:flutter/material.dart';

import '../colors/palete_colors.dart';
import '../configs/size_config.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function() press;

  const DefaultButton({
    super.key,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        onPressed: press,
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(greenButton)),
        child: Container(
          width: getScreenWidth(context, 200),
          height: getScreenHeight(context, 50),
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}