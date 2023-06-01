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
  TextEditingController _seedsController = TextEditingController(text:"10");
  TextEditingController _lengthController = TextEditingController(text:"36");
  TextEditingController _widthController = TextEditingController(text:"17");
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
        centerTitle: false,
         iconTheme: IconThemeData(
          color: Colors.green,
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
                child: Text("Coleta (gramas)"),
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
                child: Text("Espacamento"),
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
                child: Text("Distância"),
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
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                    _calcular();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => resultado(titulo: "Adubo", result: "$_result", texto: "gramas")),
                    );
                  },
                
                child: Text('Calcular',style:TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                 )),

                 style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  elevation: 10.0,
                  backgroundColor: Colors.orange,
                   padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ))
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
