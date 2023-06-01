import 'package:flutter/material.dart';
import 'package:teste_calculadora/pages/calc_adubo1.dart';
import 'package:teste_calculadora/pages/calc_adubo2.dart';
import 'package:teste_calculadora/instru_coleta.dart';

void main() {
  runApp(CalcAduboPage());
}

class CalcAduboPage extends StatefulWidget {
  @override
  _calcAduboPageState createState() => _calcAduboPageState();
}

class _calcAduboPageState extends State<CalcAduboPage> {
  bool showAdditionalButtonFinal1 = false;
  bool showAdditionalButtonFinal2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: false,
       iconTheme: IconThemeData(
          color: const Color.fromRGBO(123, 172, 57, 100),
          size: 32,
        ),
        elevation: 0,
        title: Text(
          'Adubo',
          
          style: TextStyle(
            
            fontSize: 28,
            color: Colors.black54,
          ),
        ),
        actions: [
            Padding(
               padding: const EdgeInsets.only(left: 10,right: 20),
              child: Container(
                width: 50,
                child: Image.asset(
                    'assets/logo_Verde.png'),
              ),
            )
          ],
      ),
      body:SingleChildScrollView(child:Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              'Escolha o tipo de Adubo:',
              style: TextStyle(fontSize: 25,color:Colors.black54),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color:(showAdditionalButtonFinal1==false) ?  Colors.white:const Color.fromRGBO(123, 172, 57, 100),
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    showAdditionalButtonFinal1 = true;
                    showAdditionalButtonFinal2 = false;
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
                    color: (showAdditionalButtonFinal1==true)
                        ? Colors.white
                        : const Color.fromRGBO(123, 172, 57, 100),
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color:(showAdditionalButtonFinal2==false) ?  Colors.white:const Color.fromRGBO(123, 172, 57, 100),
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    showAdditionalButtonFinal1 = false;
                    showAdditionalButtonFinal2 = true;
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
                    color: (showAdditionalButtonFinal2==true)
                        ? Colors.white
                        : const Color.fromRGBO(123, 172, 57, 100),
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            if (showAdditionalButtonFinal1) ...[
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(246, 164, 54, 34),
                  border: Border.all(color: const Color.fromRGBO(246, 164, 54, 34)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => calc_adubo1()),
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
                  color: const Color.fromRGBO(246, 164, 54, 34),
                  border: Border.all(color: const Color.fromRGBO(246,164,54,34)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => calc_adubo2()),
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
            SizedBox(height: 20,),
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
          ],
        ),
      ),
      ),
    );
  }
}
