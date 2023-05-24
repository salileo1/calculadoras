import 'package:flutter/material.dart';

class resultado extends StatelessWidget {
  final String result;
  final String texto;

  const resultado({required this.result, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Color.fromARGB(255, 255, 230, 1), // Set the background color to yellow
      body: Center(
        child: Container(
          width: 400,
          height: 250,
          color: Colors.amber, // Set the color of the square box to amber
          child: Center(
            child: Text(
              '$result\n$texto',
              style: TextStyle(
                fontSize: 30, // Increase the font size
                color: const Color.fromARGB(255, 255, 255, 255), // Set the font color to black
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

