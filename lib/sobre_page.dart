import 'package:flutter/material.dart';


class SobrePage extends StatelessWidget {
  const SobrePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          toolbarHeight: 300,
          backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
          flexibleSpace: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 30, bottom: 30),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Sobre',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight:  FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
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
                    '\nA FertiSystem surgiu em 2002 com o propósito de revolucionar a maneira de plantar, buscando levar ate os agricultores tecnologias sustentaveis que facilitem e proporcionem um plantio adequado e conservacionista, garantindo uma maior produtividade na lavoura e auxiliando a conservação do solo. Revolucionamos o mercado de dosadores de adubo com o FertiSystem Auto-Lab, proporcionando eficiencia na distribuicao do adubo, com uniformindade e precisao. Hoje estamos presentes em 95% das industrias de maquinas e implementos agricolas do Brasil, com exportacao para diversos paises do mundo.',
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
