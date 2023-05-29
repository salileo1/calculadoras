import 'dart:ffi';
import 'package:flutter/material.dart';
import 'resultado.dart';

void main() {
  runApp(calc_semente7());
}

class calc_semente7 extends StatefulWidget {
  @override
  _calc_semente7State createState() => _calc_semente7State();
}

class _calc_semente7State extends State<calc_semente7> {
  TextEditingController _seedsController = TextEditingController();
  TextEditingController _lengthController = TextEditingController();
  TextEditingController _widthController = TextEditingController();
  TextEditingController _lastController = TextEditingController();
  double _result = 0.0;


  void _calcular() {
    int gramas = int.tryParse(_seedsController.text) ?? 0;
    int peso = int.tryParse(_lengthController.text) ?? 0;
    int espacamento = int.tryParse(_widthController.text) ?? 0;
    double potencial = double.tryParse(_lastController.text) ?? 0.0;
    
    double calculo1 = 10000 / (espacamento / 100);
    double calculo2 = 100 - potencial;
    double calculo3 = gramas + (gramas * calculo2) / 100;
    double calculo4 = calculo3 * calculo1 / 1000; 
    

    setState(() {
      _result = double.parse(calculo4.toStringAsFixed(3));
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
                child: Text("Grãos por m²",),
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
                child: Text("Peso 100 Grãos (Gramas)",),
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
                child: Text("Espacamento (Centimetros)",),
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
                child: Text("Potencial Germinativo",),
              ),

              TextField(
                controller: _lastController,
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
                      MaterialPageRoute(builder: (context) => resultado(titulo: "Sementes", texto: "", result: "Kg/Ha: $_result" )),
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
