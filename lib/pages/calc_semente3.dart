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
  TextEditingController _seedsController = TextEditingController();
  TextEditingController _lengthController = TextEditingController();
  TextEditingController _widthController = TextEditingController();
  TextEditingController _newController = TextEditingController();
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
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _seedsController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Kg/Hectare',
                ),
              ),
              TextField(
                controller: _lengthController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Potencial germinativo',
                ),
              ),
              TextField(
                controller: _widthController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Espacamento (Centimetros)',
                ),
              ),
              TextField(
                controller: _newController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Distância (metros)',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                    _calcular();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => resultado(titulo: "Sementes", result: "$_result", texto: "em \n$distancia metros")),
                    );
                  },
                
                child: Text('Calcular'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
