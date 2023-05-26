import 'package:flutter/material.dart';
import 'package:teste_calculadora/pages/calc_semente1.dart';
import 'package:teste_calculadora/pages/calc_semente2.dart';
import 'package:teste_calculadora/pages/calc_semente3.dart';
import 'package:teste_calculadora/pages/calc_semente5.dart';
import 'package:teste_calculadora/pages/calc_semente4.dart';
import 'package:teste_calculadora/pages/calc_semente6.dart';
import 'package:teste_calculadora/pages/calc_semente7.dart';
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
  bool _click1 = false; //alterar cor do botao quando pressionado
  bool _click2 = false;
  bool _click3 = false;
  bool _addclick1 = false;
  bool _addclick2 = false;
  bool _addclick3 = false;
  bool _addclick4 = false;
  bool _addclick5 = false;
  bool _addclick6 = false;
  bool _addclick7 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: false,
        iconTheme: IconThemeData(
          //BOTAO RETROCEDER
          color: Colors.green,
          size: 35,
        ),
        elevation: 0,
        title: Text(
          'Semente',
          style: TextStyle(
            fontSize: 28,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
        //Imagem do canto superior esquerdo
        actions: [Container(
          
          width: 50,
          child: Image.network('https://logowik.com/content/uploads/images/flutter5786.jpg'),
        )],
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              'Escolha o tipo de semente:',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: (_click1 == false) ? Colors.white : Colors.green,
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(20)),
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
                    _click1 = true;
                    _click2 = false;
                    _click3 = false;
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: Text(
                  'Graúdas',
                  style: TextStyle(
                    color: (_click1 == true) ? Colors.white : Colors.green,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: (_click2 == false) ? Colors.white : Colors.green,
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(20)),
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
                    _click1 = false;
                    _click2 = true;
                    _click3 = false;
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: Text(
                  'Finas',
                  style: TextStyle(
                    color: (_click2 == true) ? Colors.white : Colors.green,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: (_click3 == false) ? Colors.white : Colors.green,
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(20)),
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
                    _click1 = false;
                    _click2 = false;
                    _click3 = true;
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: Text(
                  'Contagem de sementes',
                  style: TextStyle(
                    color: (_click3 == true) ? Colors.white : Colors.green,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            if (showAdditionalButtons1)
              //botao grauda
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                          padding: EdgeInsets.only(left:15, bottom: 0, right: 20, top:10), //apply padding horizontal or vertical only
                          child: Text(
                    "Escolha o tipo de cálculo: ",
                    style: TextStyle(fontSize: 25, color: Colors.black54),
                    
                  ),
                        ),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color:
                            (_addclick1 == false) ? Colors.white : Colors.green,
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(20)),
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
                          _addclick1 = true;
                          _addclick2 = false;
                          _addclick3 = false;
                          _addclick4 = false;
                          _addclick5 = false;
                          _addclick6 = false;
                          _addclick7 = false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      child: Text(
                        'População/Ha',
                        style: TextStyle(
                          color: (_addclick1 == true)
                              ? Colors.white
                              : Colors.green,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color:
                            (_addclick2 == false) ? Colors.white : Colors.green,
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(20)),
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
                          _addclick1 = false;
                          _addclick2 = true;
                           _addclick3 = false;
                          _addclick4 = false;
                          _addclick5 = false;
                          _addclick6 = false;
                          _addclick7 = false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      child: Text(
                        'Sementes/Metro',
                        style: TextStyle(
                          color: (_addclick2 == true)
                              ? Colors.white
                              : Colors.green,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            if (showAdditionalButtons2)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                          padding: EdgeInsets.only(left:15, bottom: 0, right: 20, top:10), //apply padding horizontal or vertical only
                          child: Text(
                    "Escolha o tipo de cálculo: ",
                    style: TextStyle(fontSize: 25, color: Colors.black54),
                    
                  ),
                        ),
                  
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color:
                            (_addclick3 == false) ? Colors.white : Colors.green,
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(20)),
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
                          _addclick1 = false;
                          _addclick2 = false;
                          _addclick3 = true;
                          _addclick4 = false;
                          _addclick5 = false;
                          _addclick6 = false;
                          _addclick7 = false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      child: Text(
                        'Gramas a coletar',
                        style: TextStyle(
                          color: (_addclick3 == true)
                              ? Colors.white
                              : Colors.green,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color:
                            (_addclick4 == false) ? Colors.white : Colors.green,
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(20)),
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
                          _addclick1 = false;
                          _addclick2 = false;
                          _addclick3 = false;
                          _addclick4 = true;
                          _addclick5 = false;
                          _addclick6 = false;
                          _addclick7 = false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      child: Text(
                        'Kg/Ha',
                        style: TextStyle(
                          color: (_addclick4 == true)
                              ? Colors.white
                              : Colors.green,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            if (showAdditionalButtons3)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                          padding: EdgeInsets.only(left:15, bottom: 0, right: 20, top:10), //apply padding horizontal or vertical only
                          child: Text(
                    "Escolha o tipo de cálculo: ",
                    style: TextStyle(fontSize: 25, color: Colors.black54),
                    
                  ),
                        ),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color:
                            (_addclick5 == false) ? Colors.white : Colors.green,
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(20)),
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
                          _addclick1 = false;
                          _addclick2 = false;
                          _addclick3 = false;
                          _addclick4 = false;
                          _addclick5 = true;
                          _addclick6 = false;
                          _addclick7 = false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      child: Text(
                        'Sementes/metro',
                        style: TextStyle(
                          color: (_addclick5 == true)
                              ? Colors.white
                              : Colors.green,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color:
                            (_addclick6 == false) ? Colors.white : Colors.green,
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(20)),
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
                          _addclick1 = false;
                          _addclick2 = false;
                          _addclick3 = false;
                          _addclick4 = false;
                          _addclick5 = false;
                          _addclick6 = true;
                          _addclick7 = false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      child: Text(
                        'Gramas/metro',
                        style: TextStyle(
                          color: (_addclick6 == true)
                              ? Colors.white
                              : Colors.green,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                   SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color:
                            (_addclick7 == false) ? Colors.white : Colors.green,
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(20)),
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
                          _addclick1 = false;
                          _addclick2 = false;
                          _addclick3 = false;
                          _addclick4 = false;
                          _addclick5 = false;
                          _addclick6 = false;
                          _addclick7 = true;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      child: Text(
                        'Kg/Ha',
                        style: TextStyle(
                          color: (_addclick7 == true)
                              ? Colors.white
                              : Colors.green,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            if (showAdditionalButtonFinal1) ...[
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => calc_semente1()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
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
            if (showAdditionalButtonFinal2) ...[
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => calc_semente2()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
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
            if (showAdditionalButtonFinal3) ...[
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => calc_semente3()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
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
            if (showAdditionalButtonFinal4) ...[
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => calc_semente4()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
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
            if (showAdditionalButtonFinal5) ...[
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => calc_semente5()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
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
            if (showAdditionalButtonFinal6) ...[
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => calc_semente6()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
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
            if (showAdditionalButtonFinal7) ...[
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => calc_semente7()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
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

            SizedBox(height: 50),
            Text(
              'Precisa de ajuda?',
              style: TextStyle(fontSize: 30, color: Colors.black87, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 25),
            Container(
              child: Text(
              'Veja instruções de semente.',
              style: TextStyle(fontSize: 25, color: Colors.black54, fontWeight: FontWeight.bold),
            ),
            )
           
           
            
          ],
        ),
        
      ),
    );
  }
}
