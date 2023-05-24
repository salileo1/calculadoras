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
  TextEditingController _seedsController = TextEditingController();
  TextEditingController _lengthController = TextEditingController();
  TextEditingController _widthController = TextEditingController();
  TextEditingController _newController = TextEditingController();
  TextEditingController _lastController = TextEditingController();
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
    double calculo6 = plantas + (plantas / 20 );
    double calculo7 = calculo5 * calculo1 /1000;

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
                controller: _newController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Plantas desejadas/Ha',
                ),
              ),
              TextField(
                controller: _seedsController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Grãos por m²',
                ),
              ),
              TextField(
                controller: _lengthController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Peso 100 Grãos (Gramas)',
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
                controller: _lastController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Potencial Germinativo',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                    _calcular();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => resultado(result: "Gramas/metro: $_result", texto: "Sementes/metro: $resposta2 \n Sementes/Ha: $resposta3 \n Kg/Ha: $resposta4")),
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
