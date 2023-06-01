import 'dart:ffi';
import 'package:flutter/material.dart';
import 'resultado.dart';

void main() {
  runApp(calc_semente5());
}

class calc_semente5 extends StatefulWidget {
  @override
  _calc_semente5State createState() => _calc_semente5State();
}

class _calc_semente5State extends State<calc_semente5> {
  TextEditingController _seedsController = TextEditingController(text:"300000");
  TextEditingController _lengthController = TextEditingController(text:"30");
  TextEditingController _widthController = TextEditingController(text:"36");
  TextEditingController _newController = TextEditingController(text:"17");
  TextEditingController _lastController = TextEditingController(text:"100");
  double _result = 0.0;
  double resposta2 = 0.0;
  double resposta3 = 0.0;
  double resposta4 = 0.0;

  void _calcular() {
    double plantas = double.tryParse(_newController.text) ?? 0.0;
    int graos = int.tryParse(_seedsController.text) ?? 0;
    int peso = int.tryParse(_lengthController.text) ?? 0;
    int espacamento = int.tryParse(_widthController.text) ?? 0;
    double potencial = double.tryParse(_lastController.text) ?? 0.0;

    double calculo1 = 10000 / (espacamento / 100);
    double calculo2 = plantas / calculo1;
    double calculo3 = 100 + (100 - potencial);
    double calculo4 = (calculo2 * calculo3) / 100;
    double calculo5 = (calculo4 * peso) / 1000;
    double calculo6 = plantas + (plantas / 20);
    double calculo7 = calculo5 * calculo1 / 1000;

    setState(() {
      _result = double.parse(calculo5.toStringAsFixed(2));
      resposta2 = double.parse(calculo4.toStringAsFixed(2));
      resposta3 = double.parse(calculo6.toStringAsFixed(2));
      resposta4 = double.parse(calculo7.toStringAsFixed(2));
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
            color: Colors.green,
            size: 32,
          ),
          elevation: 0,
          title: Text(
            'Semente',
            style: TextStyle(
              fontSize: 28,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
           leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
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
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(15), //apply padding to all four sides
                child: Text("Plantas desejadas/Ha"),
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

              Padding(
                padding: EdgeInsets.all(15), //apply padding to all four sides
                child: Text("Grãos por m²"),
              ),
              TextField(
                controller: _seedsController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                 filled: true,
                    fillColor: Colors.black12,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20))
                ),
              ),

              Padding(
                padding: EdgeInsets.all(15), //apply padding to all four sides
                child: Text("Peso 100 Grãos (Gramas)"),
              ),
              TextField(
                controller: _lengthController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                    fillColor: Colors.black12,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20))
                ),
              ),

               Padding(
                padding: EdgeInsets.all(15), //apply padding to all four sides
                child: Text("Espaçamento (Centímetros)"),
              ),
              TextField(
                controller: _widthController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                 filled: true,
                    fillColor: Colors.black12,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20))
                ),
              ),

              Padding(
                padding: EdgeInsets.all(15), //apply padding to all four sides
                child: Text("Potencial Germinativo"),
              ),
              TextField(
                controller: _lastController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                    fillColor: Colors.black12,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20))
                ),
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
                            result: "Gramas/metro: $_result",
                            texto:
                                "Sementes/metro: $resposta2 \n Sementes/Ha: $resposta3 \n Kg/Ha: $resposta4")),
                  );
                },
                child: Text('Calcular',style:TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                 )),
                  style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  elevation: 10.0,
                  backgroundColor: const Color.fromRGBO(246, 164, 54, 34),
                   padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
