import 'dart:ffi';
import 'package:flutter/material.dart';
import 'resultado.dart';

void main() {
  runApp(calc_adubo2());
}

class calc_adubo2 extends StatefulWidget {
  @override
  _calc_adubo2State createState() => _calc_adubo2State();
}

class _calc_adubo2State extends State<calc_adubo2> {
  TextEditingController _seedsController = TextEditingController();
  TextEditingController _lengthController = TextEditingController();
  TextEditingController _widthController = TextEditingController();
  int _result = 0;

  void _calcular() {
    int coleta = int.tryParse(_seedsController.text) ?? 0;
    int espacamento = int.tryParse(_lengthController.text) ?? 0;
    int distancia = int.tryParse(_widthController.text) ?? 0;
    
    double calculo1 = 10000 / (espacamento / 100);
    double calculo2 = coleta * calculo1;
    double calculo3 = calculo2 / distancia;
    double calculo4 = calculo3 / 1000;

    setState(() {
      _result = calculo4.toInt();
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
          'Adubo',
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
                  labelText: 'Coleta (gramas)',
                ),
              ),
              TextField(
                controller: _lengthController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Espaçamento',
                ),
              ),
              TextField(
                controller: _widthController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Distância',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                    _calcular();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => resultado(titulo: "Adubo", result: "$_result", texto: "gramas")),
                    );
                  },
                
                child: Text('Calcular'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Contagem de sementes por metro: $_result',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
