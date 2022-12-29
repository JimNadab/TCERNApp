import 'package:flutter/material.dart';

class EscolaDeContas extends StatelessWidget {
  const EscolaDeContas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Escola de Contas"),
        backgroundColor: const Color.fromARGB(0xFF, 0x21, 0x48, 0x3F),
      ),
    );
  }
}
