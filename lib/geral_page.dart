import 'package:flutter/material.dart';
import 'package:teste_calculadora/instru_semetes.dart';
import 'package:teste_calculadora/pages/calc_adubo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main.dart';
import 'sobre_page.dart';
import 'contato_page.dart';
import 'pages/calc_semente.dart';
import 'instru_coleta.dart';
import 'login_page.dart';
import 'dart:async';


class GeralPage extends StatefulWidget {
  @override
  _GeralPageState createState() => _GeralPageState();
}

class _GeralPageState extends State<GeralPage> {
  StreamSubscription? streamSubscription;

  @override
  initState() {
    streamSubscription =
        FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      } else {}
    });
    super.initState();
  }

  @override
  void dispose() {
    streamSubscription!.cancel();
    super.dispose();
  }

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [
    GeralPage(),
    SobrePage(),
    ContatoPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        toolbarHeight: 400,
        backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
        flexibleSpace: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 40, bottom: 40),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Image.asset(
                  'assets/logo_dose_certa.png',
                  height: 250,
                  width: 250,
                  fit: BoxFit.cover,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Dose Certa',

                      style: TextStyle(
                        
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                        height: 8), // Adicione um espaçamento entre os textos
                    Text(
                      'FertiSystem',
                      style: TextStyle(

                        fontSize: 25,
                        color: Colors.white,
                        fontFamily: 'Branding',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        'Cálculos',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(96, 96, 96, 100),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    ButtonTheme(
                      minWidth: 200.0,
                      height: 100.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 110,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CalcSementePage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(123, 172, 57, 100),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8),
                                    Text(
                                      'Semente',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontFamily: ' fonts/BrandingBlack.otf',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 40),
                          Flexible(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 110,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CalcAduboPage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(123, 172, 57, 100),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8),
                                    Text(
                                      'Adubo',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontFamily: ' fonts/BrandingBlack.otf',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        'Precisa de ajuda?',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(96, 96, 96, 100),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/sprAtivo.png",
                                width: 50,
                                height: 50,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Veja instruções de semente.',
                                style: TextStyle(
                                  fontSize: 23,
                                  color: const Color.fromRGBO(96, 96, 96, 100),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Schyler',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InstruSemetes()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(
                                  10), // Define o borderRadius desejado

                              color: Colors
                                  .black26, // Define a cor de fundo desejada
                            ),
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.black54, // Define a cor do ícone
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                    ),
                    Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/folha2Ativo.png",
                                width: 50,
                                height: 50,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Veja instruções de coleta.',
                                style: TextStyle(
                                  fontSize: 23,
                                  color: const Color.fromRGBO(96, 96, 96, 100),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Schyler',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InstruColeta()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(
                                  10), // Define o borderRadius desejado

                              color: Colors
                                  .black26, // Define a cor de fundo desejada
                            ),
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.black54, // Define a cor do ícone
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .start, // Alinha os elementos à direita
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image.network(
                                "https://logowik.com/content/uploads/images/flutter5786.jpg",
                                width: 50,
                                height: 50,
                              ),
                              SizedBox(
                                  width: 10), // espaço entre a imagem e o texto
                              Text(
                                'Sair',
                                style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(
                                12), // Ajuste o espaçamento interno conforme necessário
                            child: Icon(
                              Icons.arrow_forward,
                              color: const Color.fromRGBO(123, 172, 57, 100),
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
