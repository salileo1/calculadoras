import 'package:flutter/material.dart';
import 'package:teste_calculadora/pages/calc_adubo.dart';
import 'sobre_page.dart';
import 'contato_page.dart';
import 'pages/calc_semente.dart';

class GeralPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 800,
              height: 300,
              decoration: BoxDecoration(
                color: Color(0xFF09C10E),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 40, bottom: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Dose Certa',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'FertiSystem',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CalcSementePage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                             shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                           ),),
                            
                         
                          child: Text(
                            'Sementes',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        SizedBox(width: 50),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CalcAduboPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                           
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                             shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            )
                          ),
                          child: Text(
                            'Adubo',
                            style: TextStyle(
                              fontSize: 25,
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
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Alinha os elementos à direita
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Image.network(
                              "https://logowik.com/content/uploads/images/flutter5786.jpg",
                              width: 50,
                              height: 50,
                            ),
                            SizedBox( width: 10), // espaço entre a imagem e o texto
                            Text(
                              'Veja instruções de semente.',
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
                      ElevatedButton.icon(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.green,
                          size: 30,
                        ),
                        onPressed: () {
                          // Ação do botão transparente
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                        label:
                            Text(''), // Removido o conteúdo de texto do botão
                      ),
                    ],
                  ),

                  Padding(padding: EdgeInsets.all(15),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Alinha os elementos à direita
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Image.network(
                              "https://logowik.com/content/uploads/images/flutter5786.jpg",
                              width: 50,
                              height: 50,
                            ),
                            SizedBox( width: 10), // espaço entre a imagem e o texto
                            Text(
                              'Veja instruções de coleta.',
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
                      ElevatedButton.icon(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.green,
                          size: 30,
                        ),
                        onPressed: () {
                          // Ação do botão transparente
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                        label:
                            Text(''), // Removido o conteúdo de texto do botão
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
