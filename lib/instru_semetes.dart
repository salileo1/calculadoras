import 'package:flutter/material.dart';


class InstruSemetes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: Colors.green,
        centerTitle: false,
        
        title: Text(
          'Instruções de Semente',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        //Imagem do canto superior esquerdo
        
      ),
      body: SafeArea(
        top: true,
        child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              
              Container(
               width: MediaQuery.of(context).size.width,
                height: 500,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 20),
                  child: Text(
                    '\nContate o agrônomo de sua confiança para informaçoes de população de acordo com a sua variedade.',
                    style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
              )),

              ]))


    );
  }
}
