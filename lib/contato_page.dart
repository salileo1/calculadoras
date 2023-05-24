import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContatoPage extends StatelessWidget {
  
Future <void> _launchTeste1() async {
    final Uri _url = Uri.parse('https://pub.dev/packages/url_launcher'); // Substitua pela URL externa desejada
    if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

Future <void> _launchTeste2() async {
    final Uri _url = Uri.parse('https://www.youtube.com/watch?v=Zt2iA-oy-IY'); // Substitua pela URL externa desejada
    if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Contato'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Esta é a página Contato.',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _launchTeste1,
              child: Text('Abrir Link teste1'),
            ),
            ElevatedButton(
              onPressed: _launchTeste2,
              child: Text('Abrir Link teste2'),
            ),
          ],
        ),
      ),
    );
  }
}
