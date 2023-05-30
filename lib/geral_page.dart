import 'package:flutter/material.dart';
import 'package:teste_calculadora/instru_semetes.dart';
import 'package:teste_calculadora/pages/calc_adubo.dart';
import 'sobre_page.dart';
import 'contato_page.dart';
import 'pages/calc_semente.dart';
import 'instru_coleta.dart';
import 'login.dart';


class GeralPage extends StatelessWidget {
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
                Image.asset('images/logo_dose_certa.png',
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
                        fontFamily: 'Branging',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
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
                                      builder: (context) => CalcSementePage()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
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
                                  backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
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
                              'Veja instruções de semente.',
                              style: TextStyle(
                                fontSize: 23,
                                 color: const Color.fromRGBO(96, 96, 96, 100),
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
                                builder: (context) => InstruSemetes()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(
                              12), // Ajuste o espaçamento interno conforme necessário
                          child: Icon(
                            Icons.arrow_forward,
                            color: Color.fromARGB(255, 122, 172, 57),
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
                            Image.asset(
                              "images/folha2Ativo.png",
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(
                                width: 10), // espaço entre a imagem e o texto
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
                      SizedBox(width: 5),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InstruColeta()),
                          );
                        },
                        
                        child: Container(
                          padding: EdgeInsets.all(12), // Ajuste o espaçamento interno conforme necessário
                          child: Icon(
                            Icons.arrow_forward,
                            color: const Color.fromRGBO(123, 172, 57, 100),
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
                              'Teste tela login',
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
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(
                              12), // Ajuste o espaçamento interno conforme necessário
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.green,
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
    );
  }
}
