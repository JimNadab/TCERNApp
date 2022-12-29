import 'package:flutter/material.dart';
import 'package:f_tcernapp/ui/consultar_processo.dart';
import 'package:f_tcernapp/ui/escola_contas.dart';
import 'package:f_tcernapp/ui/login.dart';
import 'package:f_tcernapp/ui/noticias.dart';
import 'package:f_tcernapp/ui/obras.dart';
import 'package:f_tcernapp/ui/ouvidoria.dart';
import 'package:f_tcernapp/ui/servicos.dart';
import 'package:f_tcernapp/ui/sessoes.dart';
import 'package:f_tcernapp/ui/transparencia.dart';
import 'package:f_tcernapp/ui/youtube_tce.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TCE RN',
      theme: ThemeData(),
      home: const PaginaInicial(title: 'Tribunal de Contas do RN'),
    );
  }
}

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key, required this.title});

  final String title;

  @override
  State<PaginaInicial> createState() => _MyPaginaInicialState();
}

List<int> list = [1, 2, 3, 4, 5];

class _MyPaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0xFF, 0x21, 0x48, 0x3F),
        leading: Image.asset('imagens/tce-rn-brasao.png'),
        title: Column(children: [
          Row(
            children: const [
              Text(
                "TCE",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
              Text(
                "RN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Text(
                "TRIBUNAL DE CONTAS DO ESTADO",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10.0,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ]),
        actions: <Widget>[
          IconButton(
              onPressed: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              }),
              icon: const Icon(Icons.person))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 202, 199, 199),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              // Redes sociais
              Container(
                margin: const EdgeInsets.all(6.0),
                padding: const EdgeInsets.all(6.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'imagens/twitter-line.svg',
                      height: 45,
                      width: 45,
                    ),
                    SvgPicture.asset(
                      'imagens/instagram-line.svg',
                      height: 40,
                      width: 40,
                    ),
                    SvgPicture.asset(
                      'imagens/youtube-line.svg',
                      height: 50,
                      width: 50,
                    ),
                    SvgPicture.asset(
                      'imagens/facebook-line.svg',
                      height: 45,
                      width: 45,
                    ),
                  ],
                ),
              ),
              // Carrossel de notícias
              Container(
                margin: const EdgeInsets.only(
                  left: 6.0,
                  right: 6.0,
                  bottom: 6.0,
                  top: 0.0,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                alignment: Alignment.topCenter,
                child: CarouselSlider(
                  items: list
                      .map(
                        (item) => Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Center(
                            child: Text(item.toString()),
                          ),
                          //color: Colors.white,
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(autoPlay: true),
                ),
              ),

              // Menus
              ListView(
                padding: const EdgeInsets.only(
                  left: 6.0,
                  right: 6.0,
                  top: 0.0,
                  bottom: 6.0,
                ),
                shrinkWrap: true,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Consulta Processual
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 0.0,
                            right: 3.0,
                            top: 0.0,
                            bottom: 6.0,
                          ),
                          child: ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                            ),
                            child: Container(
                                padding: const EdgeInsets.only(
                                  top: 15.0,
                                  bottom: 15.0,
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'imagens/lupa.svg',
                                      height: 60.0,
                                      width: 60.0,
                                      color: const Color.fromARGB(
                                        0xFF,
                                        0x21,
                                        0x48,
                                        0x3F,
                                      ),
                                    ),
                                    const Text(
                                      'Consulta Processual',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                )),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ConsultarProcesso(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),

                      // Escola de Contas
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 3.0,
                            right: 0.0,
                            top: 0.0,
                            bottom: 6.0,
                          ),
                          child: ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                            ),
                            child: Container(
                                padding: const EdgeInsets.only(
                                  top: 15.0,
                                  bottom: 15.0,
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'imagens/book.svg',
                                      height: 60.0,
                                      width: 60.0,
                                      color: const Color.fromARGB(
                                        0xFF,
                                        0x21,
                                        0x48,
                                        0x3F,
                                      ),
                                    ),
                                    const Text(
                                      'Escola de Contas',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EscolaDeContas()));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Ouvidoria
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 0.0,
                            right: 3.0,
                            top: 0.0,
                            bottom: 6.0,
                          ),
                          child: ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                            ),
                            child: Container(
                                padding: const EdgeInsets.only(
                                  top: 15.0,
                                  bottom: 15.0,
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'imagens/ouvidoria.svg',
                                      height: 60.0,
                                      width: 60.0,
                                      color: const Color.fromARGB(
                                        0xFF,
                                        0x21,
                                        0x48,
                                        0x3F,
                                      ),
                                    ),
                                    const Text(
                                      'Ouvidoria',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Ouvidoria()));
                            },
                          ),
                        ),
                      ),

                      // Pautas das Sessões
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 3.0,
                            right: 0.0,
                            top: 0.0,
                            bottom: 6.0,
                          ),
                          child: ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                            ),
                            child: Container(
                                padding: const EdgeInsets.only(
                                  top: 15.0,
                                  bottom: 15.0,
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'imagens/calendario.svg',
                                      height: 60.0,
                                      width: 60.0,
                                      color: const Color.fromARGB(
                                        0xFF,
                                        0x21,
                                        0x48,
                                        0x3F,
                                      ),
                                    ),
                                    const Text(
                                      'Pautas das Sessões',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PautaSessoes()));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Painel de Obras
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 0.0,
                            right: 3.0,
                            top: 0.0,
                            bottom: 6.0,
                          ),
                          child: ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                            ),
                            child: Container(
                                padding: const EdgeInsets.only(
                                  top: 15.0,
                                  bottom: 15.0,
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'imagens/obras.svg',
                                      height: 60.0,
                                      width: 60.0,
                                      color: const Color.fromARGB(
                                        0xFF,
                                        0x21,
                                        0x48,
                                        0x3F,
                                      ),
                                    ),
                                    const Text(
                                      'Painel de Obras',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PainelObras()));
                            },
                          ),
                        ),
                      ),

                      // Painel da Transparência
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 3.0,
                            right: 0.0,
                            top: 0.0,
                            bottom: 6.0,
                          ),
                          child: ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                            ),
                            child: Container(
                                padding: const EdgeInsets.only(
                                  top: 15.0,
                                  bottom: 15.0,
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'imagens/transparencia.svg',
                                      height: 60.0,
                                      width: 60.0,
                                      color: const Color.fromARGB(
                                        0xFF,
                                        0x21,
                                        0x48,
                                        0x3F,
                                      ),
                                    ),
                                    const Text(
                                      'Painel da Transparência',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PainelTransparencia()));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      //Serviços
                      Expanded(
                          child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                        ),
                        child: Container(
                            padding: const EdgeInsets.only(
                              top: 15.0,
                              bottom: 15.0,
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'imagens/servicos.svg',
                                  height: 60.0,
                                  width: 60.0,
                                  color: const Color.fromARGB(
                                    0xFF,
                                    0x21,
                                    0x48,
                                    0x3F,
                                  ),
                                ),
                                const Text(
                                  'Serviços',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Servicos()));
                        },
                      ))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
