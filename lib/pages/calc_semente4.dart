import 'dart:ffi';
import 'package:flutter/material.dart';
import 'resultado.dart';

void main() {
  runApp(calc_semente4());
}

class calc_semente4 extends StatefulWidget {
  @override
  _calc_semente4State createState() => _calc_semente4State();
}

class _calc_semente4State extends State<calc_semente4> {
  TextEditingController _seedsController = TextEditingController();
  TextEditingController _lengthController = TextEditingController();
  TextEditingController _widthController = TextEditingController();
  TextEditingController _newController = TextEditingController();
  double _result = 0.0;
  double resposta2 = 0;
  double resposta3 = 0;

  void _calcular() {
    int graos = int.tryParse(_seedsController.text) ?? 0;
    int peso = int.tryParse(_lengthController.text) ?? 0;
    int espacamento = int.tryParse(_widthController.text) ?? 0;
    double potencial = double.tryParse(_newController.text) ?? 0.0;

    double calculo1 = 100 - potencial;
    double calculo2 = 10000 / (espacamento / 100);
    double calculo3 = graos + (graos * calculo1) / 100;
    double calculo4 = calculo3 * calculo2;
    double calculo5 = (calculo4 * 1000) / peso;
    double calculo6 = calculo5 / 10000;

    setState(() {
      _result = double.parse(calculo4.toStringAsFixed(1));
      resposta2 = double.parse(calculo5.toStringAsFixed(1));
      resposta3 = double.parse(calculo6.toStringAsFixed(1));
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
          actions: [
            Container(
              width: 50,
              child: Image.network(
                  'https://logowik.com/content/uploads/images/flutter5786.jpg'),
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
                child: Text("Grãos por metro"),
              ),
              TextField(
                controller: _seedsController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
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
                        borderRadius: BorderRadius.circular(20))),
                ),
              
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
                        borderRadius: BorderRadius.circular(20))),
                ),
             
             Padding(
                padding: EdgeInsets.all(15), //apply padding to all four sides
                child: Text("Potencial Germinativo"),
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
                            result: "Kg/Ha: $_result",
                            texto:
                                "Plantas/Ha: $resposta2 \n Plantas/m²: $resposta3")),
                  );
                },
                 child: Text('Calcular',
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                 )
                 ),
                   style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  elevation: 10.0,
                  backgroundColor: Colors.orange,
                   padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ))
              
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
