import 'dart:ffi';
import 'package:flutter/material.dart';
import 'resultado.dart';

void main() {
  runApp(calc_semente1());
}

class calc_semente1 extends StatefulWidget {
  @override
  _calc_semente1State createState() => _calc_semente1State();
}

class _calc_semente1State extends State<calc_semente1> {
  TextEditingController _seedsController = TextEditingController();
  TextEditingController _lengthController = TextEditingController();
  TextEditingController _widthController = TextEditingController();
  double _result = 0.0;

  void _calcular() {
    double graosPorMetro = double.tryParse(_seedsController.text) ?? 0.0;
    double potencial = double.tryParse(_lengthController.text) ?? 0.0;
    int espacamento = int.tryParse(_widthController.text) ?? 0;
    
    double calculo1 = 10000 / (espacamento / 100);
    double calculo2 = graosPorMetro * calculo1;
    double calculo3 = 100 - potencial;
    double calculo4 = (calculo2 * calculo3 / 100);
    double calculo5 = calculo2 + calculo4;

    setState(() {
      _result = double.parse(calculo5.toStringAsFixed(1));
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
                  labelText: 'Grãos por metro',
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
                  labelText: 'Espacamento',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                    _calcular();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => resultado(titulo: "Sementes", result: "$_result", texto: "em metros")),
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
