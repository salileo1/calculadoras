import 'package:flutter/material.dart';


class SobrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 800,
                height: 300,
                decoration: BoxDecoration(
                  color: Color(0xFF09C10E),
                ),
                child: Align(
                  alignment: AlignmentDirectional(-0.8, 0.7),
                  child: Text(
                    'Sobre',
                    style:  TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  ),
                ),
              ),
              Container(
                width: 700,
                height: 500,
                decoration: BoxDecoration(
                  color:  Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Text(
                    '\nA fertiSystem surgiu em 2002 com o propósito de revolucionar a maneira de plantar, buscando levar ate os agricultores tecnologias sustentaveis que facilitem e proporcionem um plantio adequado e conservacionista, garantindo uma maior produtividade na lavoura e auxiliando a conservação do solo. Revolucionamos o mercado de dosadores de adubo com o FertiSystem Auto-Lab, proporcionando eficiencia na distribuicao do adubo, com uniformindade e precisao. Hoje estamos presentes em 95% das industrias de maquinas e implementos agricolas do Brasil, com exportacao para diversos paises do mundo.',
                    style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              )),

              ]))

    );
  }
}
