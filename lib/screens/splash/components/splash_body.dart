import 'package:flutter/material.dart';

import '../../../colors/palete_colors.dart';
import '../../../configs/size_config.dart';
import '../../../components/default_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getScreenWidth(context, 25),
            vertical: getScreenHeight(context, 20),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/logoHL.png",
                      height: getScreenHeight(context, 130),
                    ),
                    Text(
                      "HealthLight",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getScreenWidth(context, 22),
                        color: blueButton,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: getScreenHeight(context, 10)),
                      child: Image.asset(
                        "assets/images/Doctors.png",
                      ),
                    ),
                    const Text(
                      "Bem-vindo ao HealthLight!\nAqui você encontra o profissional certo para cuidar da sua saúde",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const Spacer(),
                    DefaultButton(
                      text: "Vamos começar",
                      press: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
