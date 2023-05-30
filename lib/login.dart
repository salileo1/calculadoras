import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
          centerTitle: false,
          iconTheme: IconThemeData(
            color: Colors.green,
            size: 32,
          ),
          elevation: 0,
          title: Text(
            'Login do Usuário',
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
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 16.0),
              
              Padding(
                padding: EdgeInsets.all(15), //apply padding to all four sides
                child: Text("Usuário/e-mail: "),
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20))),
              ),
              Padding(
                padding: EdgeInsets.all(15), //apply padding to all four sides
                child: Text("Senha: "),
              ),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => {
                  print("o botão foi pressionado"),
                },
                child: Text('Entrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  elevation: 10.0,
                  backgroundColor: Colors.green,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
