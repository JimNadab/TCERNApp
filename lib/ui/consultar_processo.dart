import 'package:flutter/material.dart';

class ConsultarProcesso extends StatelessWidget {
  const ConsultarProcesso({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consultar Processo"),
        backgroundColor: const Color.fromARGB(0xFF, 0x21, 0x48, 0x3F),
      ),
    );
  }
}
