import 'package:flutter/material.dart';
import 'package:teste_calculadora/instru_semetes.dart';
import 'package:teste_calculadora/pages/calc_adubo.dart';
import 'package:teste_calculadora/pages/calc_semente.dart';
import 'geral_page.dart';
import 'sobre_page.dart';
import 'contato_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Aplicativo',
       theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Branding',
      ),
      home: HomePage(),
    );  
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [
    GeralPage(),
    SobrePage(),
    ContatoPage(),
    InstruSemetes(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: const Color.fromRGBO(123, 172, 57, 100),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            
            icon: Icon(Icons.home),
            label: 'Geral',
           
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Sobre',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Contato',

          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
