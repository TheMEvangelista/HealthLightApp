import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_app/screens/sign_in/sign_in_screen.dart';

import '../../../colors/palete_colors.dart';
import '../../../configs/size_config.dart';
import '../../../components/default_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getScreenWidth(context, 20)),
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  const Spacer(),
                  Text(
                    "HealthLight",
                    style: TextStyle(
                      fontSize: getScreenHeight(context, 37),
                      fontWeight: FontWeight.bold,
                      color: secondaryColor,
                    ),
                  ),
                  const Text(
                    "Aqui você encontra o profissional certo para cuidar da sua saúde.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: secondaryColor),
                  ),
                  const Spacer(flex: 5),
                  Image.asset("assets/images/Doctors.png"),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const Spacer(flex: 2),
                  ButtonComponent(
                    text: 'Vamos começar',
                    press: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
