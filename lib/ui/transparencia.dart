import 'package:flutter/material.dart';

class PainelTransparencia extends StatelessWidget {
  const PainelTransparencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Painel da Transparência"),
        backgroundColor: const Color.fromARGB(0xFF, 0x21, 0x48, 0x3F),
      ),
    );
  }
}
