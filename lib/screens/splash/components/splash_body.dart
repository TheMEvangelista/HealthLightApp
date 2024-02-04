import 'package:flutter/material.dart';

import '../../../colors/palete_colors.dart';
import '../../../configs/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: getScreenHeight(context, 20),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/logoHL.png",
                      width: 130,
                      height: 130,
                    ),
                    const Spacer(flex: 1),
                    Text(
                      'HealthLight',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getScreenWidth(context, 46),
                        color: blue4,
                      ),
                    ),
                    const Spacer(flex: 1),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(context, 20),
                ),
                child: Column(
                  children: [
                    Image.asset("assets/images/Doctors.png"),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      color: Colors.red,
                      height: 110.7,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
