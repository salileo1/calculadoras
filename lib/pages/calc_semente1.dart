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
  TextEditingController _seedsController = TextEditingController(text:"13.6");
  TextEditingController _lengthController = TextEditingController(text:"95");
  TextEditingController _widthController = TextEditingController(text:"45");
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
          centerTitle: false,
          iconTheme: IconThemeData(
            color: const Color.fromRGBO(123, 172, 57, 100),
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
                        borderRadius: BorderRadius.circular(20))),
              ),
              Padding(
                padding: EdgeInsets.all(15), //apply padding to all four sides
                child: Text("Potencial Germinativo"),
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
                child: Text("Espacamento"),
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
                              texto: "em metros")),
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
              SizedBox(height: 16.0),
              Text(
                'Contagem de sementes por metro: $_result',
                style: TextStyle(fontSize: 18.0,color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
