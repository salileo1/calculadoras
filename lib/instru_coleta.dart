import 'package:flutter/material.dart';


class InstruColeta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
        centerTitle: false,
        title: Text(
          'Instruções de Coleta',
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
                    '\nPara obter os melhores resultados de precisão na dosagem do fertilizante, a medição/calibração deve ser feita da seguinte forma:',
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
