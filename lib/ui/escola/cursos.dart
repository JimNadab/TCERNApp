import 'package:flutter/material.dart';

class Cursos extends StatelessWidget {
  const Cursos({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color.fromARGB(0xFF, 0x21, 0x48, 0x3F);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cursos"),
        backgroundColor: primaryColor,
      ),
    );
  }
}
