import 'package:flutter/material.dart';
import 'package:teste_calculadora/main.dart';
import 'package:teste_calculadora/pages/calc_semente.dart';

class InstruSemetes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
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
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 20),
                  child: Text(
                    '\nContate o agrônomo de sua confiança para informaçoes de população de acordo com a sua variedade.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ),
                  ),
                ),
                ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 20),
                      child: Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/sprAtivo.png",
                                width: 50,
                                height: 50,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Vá para cálculo de semente.',
                                style: TextStyle(
                                  fontSize: 23,
                                  color: const Color.fromRGBO(96, 96, 96, 100),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Schyler',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CalcSementePage()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10), // Define o borderRadius desejado
                              
                              color: Colors.black26, // Define a cor de fundo desejada
                            ),
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.black54, // Define a cor do ícone
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                                      ),
                    ),
                  ),
            
          ],
          
        ),
      ),
       
    );
  }
}
