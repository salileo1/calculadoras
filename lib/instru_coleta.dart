import 'package:flutter/material.dart';
import 'package:teste_calculadora/main.dart';

import 'contato_page.dart';
import 'geral_page.dart';
import 'sobre_page.dart';
import 'package:teste_calculadora/pages/calc_adubo.dart';
import 'main.dart';

class InstruColeta extends StatefulWidget {
  @override
  _InstruColetaState createState() => _InstruColetaState();
}

class _InstruColetaState extends State<InstruColeta> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
        centerTitle: false,
        title: Column(
             mainAxisSize: MainAxisSize.max,
          children: [
            Container(
               width: MediaQuery.of(context).size.width,
              child: Padding(
                
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Recomendacões de dosagem e medições dos fertilizantes',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 20),
                    child: Text(
                      '\nPara obter os melhores resultados de precisão na dosagem do fertilizante, a medição/calibração deve ser feita da seguinte forma:',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                  )),
                  //Posi1
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: IntrinsicHeight(
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'Verificar a calibragem dos pneus e a tensão das correntes. Semeadoras com eixo segmentados podem apresentar variações de dosagem entre as secções da máquina;',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Posi2
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: IntrinsicHeight(
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'Para calibração  da maquina e coletas de amostras, todos os Sem-Fins devem estar na mesma posição dentro do FertiSystem Auto-Lub APNG@;',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Posi3
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: IntrinsicHeight(
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'A primeira medição nunca deverá ser considerada como definitiva;',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Posi4
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: IntrinsicHeight(
                          child: Text(
                            '4',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'Observar a recomendação de dosagem e Sem-Fim correspondente conforme informado na tabela do fabricante;',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Posi5
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: IntrinsicHeight(
                          child: Text(
                            '5',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'Na tabela referencial de dosagem fixada na máquina, ajustar o câmbio para a dosagem desejada;',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //posi6
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: IntrinsicHeight(
                          child: Text(
                            '6',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'Realizar a pre-calibragem da plantadora/semeadora na lavoura em condições normais de plantio, conforme instrulções abaixo:',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //posi7
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: IntrinsicHeight(
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: const Color.fromRGBO(246, 164, 54, 34),
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'Area de estabilização -- puxe a máquina por cerca de 50 metros para preencher o volume de fertilizante no interior do dosador, mantendo a máquina abaixada no solo;',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //posi8
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: IntrinsicHeight(
                          child: Text(
                            '2',
                            style: TextStyle(
                              color:  const Color.fromRGBO(246, 164, 54, 34),
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'Posição inicial de coleta -- ainda com a máquina abaixada no solo, meça 100(cem) metros em linha reta e coloque coletores nas linhas que serão usadas para aferição;',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //posi9
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: IntrinsicHeight(
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: const Color.fromRGBO(246, 164, 54, 34),
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'Area de coleta -- na mesma velocidade de plantio, mantenha a máquina abaixada e percorra a distância ate o ponto delimitado para os 100 metros;',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //posi9
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: IntrinsicHeight(
                          child: Text(
                            '4',
                            style: TextStyle(
                              color: const Color.fromRGBO(246, 164, 54, 34),
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'Posição final de coleta -- com a máquina abaixada no solo, retire os coletores com as amostras e proceda com as pesagens.',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .start, // Alinha os elementos à direita
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/folha2Ativo.png",
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(
                                width: 10), // espaço entre a imagem e o texto
                            Text(
                              'Vá para cálculo de Adubo.',
                              style: TextStyle(
                                fontSize: 23,
                                color: const Color.fromRGBO(96, 96, 96, 100),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                       Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CalcAduboPage()),
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
      ),
       
    );
  }
}
