import 'package:flutter/material.dart';
import 'package:mi_primera_app/presentation/screens/velez_screen.dart';

void main() {
  runApp(const Velez());
}

class Velez extends StatelessWidget {
  const Velez({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VelezScreen(),
    );
  }
}