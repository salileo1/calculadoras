import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'check_page.dart';

class cadastroPage extends StatefulWidget {
  const cadastroPage({super.key});

  @override
  State<cadastroPage> createState() => _cadastroPageState();
}

class _cadastroPageState extends State<cadastroPage> {
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: false,
        iconTheme: IconThemeData(
          color: Colors.green,
          size: 32,
        ),
        elevation: 0,
        title: Text(
          'Criar Cadastro',
          style: TextStyle(
            fontSize: 28,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        //Imagem do canto superior esquerdo
        actions: [
          Container(
            width: 50,
            child: Image.network(
                'https://logowik.com/content/uploads/images/flutter5786.jpg'),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(15), //apply padding to all four sides
              child: Text("Nome Completo"),
            ),
            TextFormField(
              controller: _nomeController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20))),
            ),
            Padding(
              padding: EdgeInsets.all(15), //apply padding to all four sides
              child: Text("Email"),
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20))),
            ),
            Padding(
              padding: EdgeInsets.all(15), //apply padding to all four sides
              child: Text("Senha"),
            ),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(height: 16.0),
            Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: ElevatedButton(
                              onPressed: () {
                                cadastrar();
                              },
                              child: Text("Cadastrar",
                              style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),),
                               style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black,
                      elevation: 10.0,
                      backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  
                              ),
                              
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  cadastrar() async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text);
      if (userCredential != null) {
        userCredential.user!.updateDisplayName(_nomeController.text);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => checkPage()),
            (route) => false);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Crie uma senha mais forte"),
            backgroundColor: Colors.redAccent,
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Email já cadastrado"),
            backgroundColor: Colors.redAccent,
          ),
        );
      }
    }
  }
}
