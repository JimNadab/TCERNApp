import 'package:flutter/material.dart';

class PautaSessoes extends StatelessWidget {
  const PautaSessoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pauta das Sessões"),
        backgroundColor: const Color.fromARGB(0xFF, 0x21, 0x48, 0x3F),
      ),
    );
  }
}
