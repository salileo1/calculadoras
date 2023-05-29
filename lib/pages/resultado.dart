import 'package:flutter/material.dart';

class resultado extends StatelessWidget {
  final String titulo;
  final String result;
  final String texto;

  const resultado({required this.titulo, required this.result, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.amber,
        centerTitle: false,
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 133, 101, 7),
          size: 32,
        ),
        elevation: 0,
        title: Text(
          '$titulo',
          style: TextStyle(
            fontSize: 28,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
      backgroundColor: Colors.amber, // Set the background color to yellow
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Padding(
                padding: EdgeInsets.only(bottom: 10), //apply padding to all four sides
                child: Text("Resultado",
                style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
              ),
               Padding(
                padding: EdgeInsets.only(bottom: 10), //apply padding to all four sides
                child: Text("Quantidade aproximada:",
                style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
          
          Container(
          width: 400,
          height: 125,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 241, 118).withOpacity(0.8),
            
            borderRadius: BorderRadius.circular(20),
          ),
          
           // Set the color of the square box to amber
           
          child: Center(
            
            child: Text(
              '$result',
              style: TextStyle(
                fontSize: 40, // Increase the font size
                color: const Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold // Set the font color to black
              ),
              textAlign: TextAlign.center,
            ),
          ),
          
        ),
         Padding(
                padding: EdgeInsets.only(bottom: 20), //apply padding to all four sides
                child: Text('$texto',
                style: TextStyle(color: Colors.white,fontSize: 20,),),
              ),
        ],
        ) 
      ),
    );
  }
}

