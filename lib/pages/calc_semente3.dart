import 'dart:ffi';
import 'package:flutter/material.dart';
import 'resultado.dart';

void main() {
  runApp(calc_semente3());
}

class calc_semente3 extends StatefulWidget {
  @override
  _calc_semente3State createState() => _calc_semente3State();
}

class _calc_semente3State extends State<calc_semente3> {
  TextEditingController _seedsController = TextEditingController(text: "180");
  TextEditingController _lengthController = TextEditingController(text:"100");
  TextEditingController _widthController = TextEditingController(text: "17");
  TextEditingController _newController = TextEditingController(text: "10");
  double _result = 0.0;
  int distancia = 0;

  void _calcular() {
    double kg_hectare = double.tryParse(_seedsController.text) ?? 0.0;
    double potencial = double.tryParse(_lengthController.text) ?? 0.0;
    int espacamento = int.tryParse(_widthController.text) ?? 0;
    int metros = int.tryParse(_newController.text) ?? 0;

    double calculo1 = 100 - potencial;
    double calculo2 = 10000 / (espacamento / 100);
    double calculo3 = kg_hectare * 1000;
    double calculo4 = calculo3 / calculo2;
    double calculo5 = (calculo4 * calculo1) / 100;

    setState(() {
      _result = (calculo4 + calculo5) * metros;
      distancia = metros;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          //Imagem do canto superior esquerdo
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
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(15), //apply padding to all four sides
                child: Text("Kg/Hectare"),
              ),
              TextField(
                  controller: _seedsController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)))),
              Padding(
                padding: EdgeInsets.all(15), //apply padding to all four sides
                child: Text("Potencial germinativo"),
              ),
              TextField(
                  controller: _lengthController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)))),
              Padding(
                padding: EdgeInsets.all(15), //apply padding to all four sides
                child: Text("Espacamento (Centimetros)"),
              ),
              TextField(
                  controller: _widthController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)))),
              Padding(
                padding: EdgeInsets.all(15), //apply padding to all four sides
                child: Text("Distância (metros)"),
              ),
              TextField(
                controller: _newController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                  onPressed: () {
                    _calcular();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => resultado(
                              titulo: "Sementes",
                              result: "$_result",
                              texto: "em \n$distancia metros")),
                    );
                  },
                  child: Text('Calcular',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black,
                      elevation: 10.0,
                      backgroundColor: const Color.fromRGBO(246, 164, 54, 34),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
