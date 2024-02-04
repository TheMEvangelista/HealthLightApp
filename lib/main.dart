import 'package:flutter/material.dart';
import 'package:medical_app/screens/splash/splash_screen.dart';

import 'routes/rotas.dart';
import 'theme.dart';

void main() {
  runApp(const HealthLight());
}

class HealthLight extends StatelessWidget {
  const HealthLight({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
