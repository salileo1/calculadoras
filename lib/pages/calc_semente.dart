import 'package:flutter/material.dart';
import 'package:teste_calculadora/pages/calc_semente1.dart';
import 'package:teste_calculadora/pages/calc_semente2.dart';
import 'package:teste_calculadora/pages/calc_semente3.dart';
import 'package:teste_calculadora/pages/calc_sementes4.dart';
import '../geral_page.dart';
import '../sobre_page.dart';
import '../contato_page.dart';

class CalcSementePage extends StatefulWidget {
  @override
  _calcSementeState createState() => _calcSementeState();
  
}

class _calcSementeState extends State<CalcSementePage> {
    bool showAdditionalButtons1 = false;
    bool showAdditionalButtons2 = false;
    bool showAdditionalButtons3 = false;
    bool showAdditionalButtonFinal1 = false;
    bool showAdditionalButtonFinal2 = false;
    bool showAdditionalButtonFinal3 = false;
    bool showAdditionalButtonFinal4 = false;
    bool showAdditionalButtonFinal5 = false;
    bool showAdditionalButtonFinal6 = false;
    bool showAdditionalButtonFinal7 = false;
  
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 32,
        ),
        elevation: 0,
        title: Text(
          'Sementes',
          style: TextStyle(
            fontSize: 28,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            Text(
              'Escolha o tipo de semente:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.green),
              ),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    showAdditionalButtons2 = false;
                    showAdditionalButtons1 = true;
                    showAdditionalButtons3 = false;
                    showAdditionalButtonFinal1 = false;
                    showAdditionalButtonFinal2 = false;
                    showAdditionalButtonFinal3 = false;
                    showAdditionalButtonFinal4 = false;
                    showAdditionalButtonFinal5 = false;
                    showAdditionalButtonFinal6 = false;
                    showAdditionalButtonFinal7 = false;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: Text(
                  'Graúdas',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                  ),
                ),
              ), 
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.green),
              ),
              child: ElevatedButton(
                onPressed: () {
                   setState(() {
                    showAdditionalButtons2 = true;
                    showAdditionalButtons1 = false;
                    showAdditionalButtons3 = false;
                    showAdditionalButtonFinal1 = false;
                    showAdditionalButtonFinal2 = false;
                    showAdditionalButtonFinal3 = false;
                    showAdditionalButtonFinal4 = false;
                    showAdditionalButtonFinal5 = false;
                    showAdditionalButtonFinal6 = false;
                    showAdditionalButtonFinal7 = false;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: Text(
                  'Finas',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.green),
              ),
              child: ElevatedButton(
                onPressed: () {
                   setState(() {
                    showAdditionalButtons2 = false;
                    showAdditionalButtons1 = false;
                    showAdditionalButtons3 = true;
                    showAdditionalButtonFinal1 = false;
                    showAdditionalButtonFinal2 = false;
                    showAdditionalButtonFinal3 = false;
                    showAdditionalButtonFinal4 = false;
                    showAdditionalButtonFinal5 = false;
                    showAdditionalButtonFinal6 = false;
                    showAdditionalButtonFinal7 = false;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: Text(
                  'Contagem de sementes',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            if (showAdditionalButtons1)
              Column(
                children: [
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.green),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showAdditionalButtons2 = false;
                          showAdditionalButtons1 = true;
                          showAdditionalButtons3 = false;
                          showAdditionalButtonFinal1 = true;
                          showAdditionalButtonFinal2 = false;
                          showAdditionalButtonFinal3 = false;
                          showAdditionalButtonFinal4 = false;
                          showAdditionalButtonFinal5 = false;
                          showAdditionalButtonFinal6 = false;
                          showAdditionalButtonFinal7 = false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.transparent),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      child: Text(
                        'População/Ha',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.green),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showAdditionalButtons2 = false;
                          showAdditionalButtons1 = true;
                          showAdditionalButtons3 = false;
                          showAdditionalButtonFinal1 = false;
                          showAdditionalButtonFinal2 = true;
                          showAdditionalButtonFinal3 = false;
                          showAdditionalButtonFinal4 = false;
                          showAdditionalButtonFinal5 = false;
                          showAdditionalButtonFinal6 = false;
                          showAdditionalButtonFinal7 = false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.transparent),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      child: Text(
                        'Sementes/Metro',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            if (showAdditionalButtons2)
            Column(
              children: [
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.green),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showAdditionalButtons2 = true;
                        showAdditionalButtons1 = false;
                        showAdditionalButtons3 = false;
                        showAdditionalButtonFinal1 = false;
                        showAdditionalButtonFinal2 = false;
                        showAdditionalButtonFinal3 = true;
                        showAdditionalButtonFinal4 = false;
                        showAdditionalButtonFinal5 = false;
                        showAdditionalButtonFinal6 = false;
                        showAdditionalButtonFinal7 = false;
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.transparent),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    child: Text(
                      'Gramas a coletar',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.green),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showAdditionalButtons2 = true;
                        showAdditionalButtons1 = false;
                        showAdditionalButtons3 = false;
                        showAdditionalButtonFinal1 = false;
                        showAdditionalButtonFinal2 = false;
                        showAdditionalButtonFinal3 = false;
                        showAdditionalButtonFinal4 = true;
                        showAdditionalButtonFinal5 = false;
                        showAdditionalButtonFinal6 = false;
                        showAdditionalButtonFinal7 = false;
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.transparent),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    child: Text(
                      'Kg/Ha',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          if (showAdditionalButtons3)
              Column(
                children: [
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.green),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showAdditionalButtons2 = false;
                          showAdditionalButtons1 = false;
                          showAdditionalButtons3 = true;
                          showAdditionalButtonFinal1 = false;
                          showAdditionalButtonFinal2 = false;
                          showAdditionalButtonFinal3 = false;
                          showAdditionalButtonFinal4 = false;
                          showAdditionalButtonFinal5 = true;
                          showAdditionalButtonFinal6 = false;
                          showAdditionalButtonFinal7 = false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.transparent),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      child: Text(
                        'Sementes/metro',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.green),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showAdditionalButtons2 = false;
                          showAdditionalButtons1 = false;
                          showAdditionalButtons3 = true;
                          showAdditionalButtonFinal1 = false;
                          showAdditionalButtonFinal2 = false;
                          showAdditionalButtonFinal3 = false;
                          showAdditionalButtonFinal4 = false;
                          showAdditionalButtonFinal5 = false;
                          showAdditionalButtonFinal6 = true;
                          showAdditionalButtonFinal7 = false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.transparent),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      child: Text(
                        'Gramas/metro',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.green),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showAdditionalButtons2 = false;
                          showAdditionalButtons1 = false;
                          showAdditionalButtons3 = true;
                          showAdditionalButtonFinal1 = false;
                          showAdditionalButtonFinal2 = false;
                          showAdditionalButtonFinal3 = false;
                          showAdditionalButtonFinal4 = false;
                          showAdditionalButtonFinal5 = false;
                          showAdditionalButtonFinal6 = false;
                          showAdditionalButtonFinal7 = true;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.transparent),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      child: Text(
                        'Kg/Ha',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          if(showAdditionalButtonFinal1) ...[
            SizedBox(height: 16),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(color: Colors.orange),
                ),
                child: ElevatedButton(
                  onPressed: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => calc_semente1()),
                        );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                  ),
                  child: Text(
                    'Ir para a calculadora',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          if(showAdditionalButtonFinal2) ...[
            SizedBox(height: 16),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(color: Colors.orange),
                ),
                child: ElevatedButton(
                  onPressed: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => calc_semente2()),
                        );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                  ),
                  child: Text(
                    'Ir para a calculadora',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
          if(showAdditionalButtonFinal3) ...[
            SizedBox(height: 16),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(color: Colors.orange),
                ),
                child: ElevatedButton(
                  onPressed: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => calc_semente3()),
                        );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                  ),
                  child: Text(
                    'Ir para a calculadora',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
          if(showAdditionalButtonFinal4) ...[
            SizedBox(height: 16),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(color: Colors.orange),
                ),
                child: ElevatedButton(
                  onPressed: () {
                      Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => calc_semente4()),
                      );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                  ),
                  child: Text(
                    'Ir para a calculadora',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
          if(showAdditionalButtonFinal5) ...[
            SizedBox(height: 16),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(color: Colors.orange),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                  ),
                  child: Text(
                    'Ir para a calculadora',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
          if(showAdditionalButtonFinal6) ...[
            SizedBox(height: 16),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(color: Colors.orange),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                  ),
                  child: Text(
                    'Ir para a calculadora',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
          if(showAdditionalButtonFinal7) ...[
            SizedBox(height: 16),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(color: Colors.orange),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                  ),
                  child: Text(
                    'Ir para a calculadora',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
          ],
        ),
      ),
    );
  }
}
