import 'package:flutter/material.dart';

class FormError extends StatelessWidget {
  const FormError({
    super.key,
    required this.erros,
  }); 

  final List<String> erros;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        erros.length,
        (index) => errorText(error: erros[index]),
      ),
    );
  }

  Widget errorText({required String error}) {
    return Row(
      children: [
        Text(error),
      ],
    );
  }
}