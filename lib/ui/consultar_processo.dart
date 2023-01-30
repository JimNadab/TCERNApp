import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class ConsultarProcesso extends StatelessWidget {
  const ConsultarProcesso({super.key});

  @override
  Widget build(BuildContext context) {
    final numeroProcessoField = TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [LengthLimitingTextInputFormatter(6)],
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Número Processo',
        hintText: 'Ex: 123456',
      ),
    );
    final anoProcessoField = TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [LengthLimitingTextInputFormatter(4)],
      decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Ano Processo',
          hintText: 'Ex: 2023'),
    );
    final orgaoField = TextFormField(
      inputFormatters: [LengthLimitingTextInputFormatter(30)],
      decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Orgão',
          hintText: 'Ex: Prefeitura de Natal'),
    );
    final relatorField = TextFormField(
      inputFormatters: [LengthLimitingTextInputFormatter(30)],
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Relator',
      ),
    );
    final interessadoField = TextFormField(
      inputFormatters: [LengthLimitingTextInputFormatter(30)],
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Interessado',
      ),
    );
    final assuntoField = TextFormField(
      inputFormatters: [LengthLimitingTextInputFormatter(30)],
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Assunto',
      ),
    );
    final consultarButton = TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 12, 51, 42),
            textStyle: const TextStyle(fontSize: 20)),
        child: const Text('Consultar'));
    return Scaffold(
        appBar: AppBar(
          title: const Text("Consultar Processo"),
          backgroundColor: const Color.fromARGB(0xFF, 0x21, 0x48, 0x3F),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: numeroProcessoField,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: anoProcessoField,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: orgaoField,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: relatorField,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: interessadoField,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: assuntoField,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: consultarButton,
            ),
          ],
        ));
  }
}
