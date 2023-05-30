import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContatoPage extends StatelessWidget {
  Future<void> _launchTeste1() async {
    final Uri _url = Uri.parse(
        'https://www.fertisystem.com.br/'); // Substitua pela URL externa desejada
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  Future<void> _launchTeste2() async {
    final Uri _url = Uri.parse(
        'https://www.youtube.com/watch?v=Zt2iA-oy-IY'); // Substitua pela URL externa desejada
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
        toolbarHeight: 300,
        flexibleSpace: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(
                left: 30,
                bottom: 30), // Adicione o espaçamento desejado à direita
            child: Text(
              'Contato',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ), // Defina o tamanho de fonte desejado
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
              child: Text(
                'Acesse nosso site e conheça as tecnologias FertiSystem',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20),
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: _launchTeste1,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
                         shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20) )
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/site.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(height: 10),
                          Text('Site'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                 Flexible(
      child: SizedBox(
    width: MediaQuery.of(context).size.width,
      height: 70,
      child: ElevatedButton(
        onPressed: _launchTeste1,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
           shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20) )
        ),
        child: Column(
          children: [
            Image.asset(
              'images/telefone.png',
              width: 24,
              height: 24,
            ),
            SizedBox(height: 8),
            Text('Telefone'),
          ],
        ),
      ),
    ),
    ),
                SizedBox(width: 20),
                 Flexible(
      child: SizedBox(
    width: MediaQuery.of(context).size.width,
      height: 70,
      child: ElevatedButton(
        onPressed: _launchTeste1,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
           shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20) )
        ),
        child: Column(
          children: [
            Image.network(
              'images/EMAIL.png',
              width: 15,
              height: 15,
            ),
            SizedBox(height: 8),
            Text('Email'),
          ],
        ),
      ),
    ),
    ),
      SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
              child: Text(
                'Siga-nos',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20),
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: _launchTeste1,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
                         shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20) )
                      ),
                      child: Column(
                        children: [
                          Image.network(
                            'images/face.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(height: 8),
                          
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: _launchTeste1,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
                         shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20) )
                      ),
                      child: Column(
                        children: [
                          Image.network(
                         'images/insta.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(height: 8),
                         
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: _launchTeste1,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
                         shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20) )
                      ),
                      child: Column(
                        children: [
                          Image.network(
                            '/images/linkedin.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(height: 8),
                         
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: _launchTeste1,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
                         shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20) )
                      ),
                      child: Column(
                        children: [
                          Image.network(
                            'images/wpp.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(height: 8),
                          Text('Site'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
