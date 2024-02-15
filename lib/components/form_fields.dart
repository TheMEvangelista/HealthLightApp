import 'package:flutter/material.dart';
import 'package:medical_app/screens/forgot_password/forgot_password_screen.dart';

import '../components/default_button.dart';
import '../components/form_error.dart';
import '../configs/size_config.dart';
import '../constants/constants.dart';

class FormFields extends StatefulWidget {
  const FormFields({super.key});

  @override
  State<FormFields> createState() => _FormFieldsState();
}

class _FormFieldsState extends State<FormFields> {
  final GlobalKey<FormState> formKey = GlobalKey();
  final List<String> erros = [];
  late String name;
  late String email;
  late String password;
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          formFieldEmail(),
          SizedBox(height: getScreenHeight(context, 30)),
          formFieldPassword(),
          SizedBox(height: getScreenHeight(context, 10)),
          FormError(erros: erros),
          SizedBox(height: getScreenHeight(context, 5)),
          checkPasswordField(),
          ButtonComponent(
            text: 'Continue',
            press: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField formFieldText() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => name = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && erros.contains(nameNullError)) {
          setState(() {
            erros.remove(nameNullError);
          });
        } else if (nameValidator.hasMatch(value) &&
            erros.contains(invalidNameError)) {
          setState(() {
            erros.remove(invalidNameError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !erros.contains(nameNullError)) {
          setState(() {
            erros.add(nameNullError);
          });
        } else if (!nameValidator.hasMatch(value) &&
            !erros.contains(invalidNameError)) {
          setState(() {
            erros.add(invalidNameError);
          });
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Name',
        hintText: "Enter your complete name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField formFieldEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && erros.contains(emailNullError)) {
          setState(() {
            erros.remove(emailNullError);
          });
        } else if (emailValidator.hasMatch(value) &&
            erros.contains(invalidEmailError)) {
          setState(() {
            erros.remove(invalidEmailError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !erros.contains(emailNullError)) {
          setState(() {
            erros.add(emailNullError);
          });
        } else if (!emailValidator.hasMatch(value) &&
            !erros.contains(invalidEmailError)) {
          setState(() {
            erros.add(invalidEmailError);
          });
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Email',
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField formFieldPassword() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && erros.contains(passNullError)) {
          setState(() {
            erros.remove(passNullError);
          });
        } else if (value.length >= 8 && erros.contains(shortPassError)) {
          setState(() {
            erros.remove(shortPassError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !erros.contains(passNullError)) {
          setState(() {
            erros.add(passNullError);
          });
        } else if (value.length < 8 &&
            !erros.contains(shortPassError) &&
            !erros.contains(passNullError)) {
          setState(() {
            erros.add(shortPassError);
          });
        }
        return;
      },
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  Row checkPasswordField() {
    return Row(
      children: [
        Checkbox(
          value: remember,
          activeColor: Colors.blue,
          onChanged: (value) {
            setState(() {
              remember = value!;
            });
          },
        ),
        const Text("Remember me"),
        const Spacer(),
        GestureDetector(
          onTap: () =>
              Navigator.pushNamed(context, ForgotPasswordScreen.routeName),
          child: const Text(
            "Forgot your password",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
