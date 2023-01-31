import 'package:f_tcernapp/ui/escola/calendario.dart';
import 'package:flutter/material.dart';

import 'escola/cursos.dart';
import 'escola/inscricoes.dart';
import 'escola/presenca.dart';

class EscolaDeContas extends StatelessWidget {
  const EscolaDeContas({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color.fromARGB(0xFF, 0x21, 0x48, 0x3F);
    const Color bgColor = Color.fromARGB(255, 202, 199, 199);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Escola de Contas"),
        backgroundColor: primaryColor,
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // Título
            const Text(
              'Eventos/Cursos',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: primaryColor),
            ),
            // Menus
            // Calendário
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Calendario()));
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Calendário',
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            // Cursos
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Cursos()));
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Cursos',
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            // Inscrições Abertas
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Inscricoes()));
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Inscrições Abertas',
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            // Confirmação de Presença
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Presenca()));
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Confirmação de Presença',
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ])),
    );
  }
}
