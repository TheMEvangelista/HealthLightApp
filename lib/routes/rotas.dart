import 'package:flutter/widgets.dart';
import 'package:medical_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:medical_app/screens/sign_in/sign_in_screen.dart';
import 'package:medical_app/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
};
