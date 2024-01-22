import 'package:flutter/material.dart';

void main() {
  runApp(const HealthLight());
}

class HealthLight extends StatelessWidget {
  const HealthLight({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
