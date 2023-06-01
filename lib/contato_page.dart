import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContatoPage extends StatelessWidget {
  //const ContatoPage({super.key});
    TextEditingController nameController = TextEditingController();
   TextEditingController emailController = TextEditingController();
   TextEditingController descriptionController = TextEditingController();


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






  Future<void> face() async {
    final Uri _url = Uri.parse(
        'https://www.facebook.com/FertiSystem/'); // Substitua pela URL externa desejada
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
  Future<void> insta() async {
    final Uri _url = Uri.parse(
        'https://www.instagram.com/fertisystem/'); // Substitua pela URL externa desejada
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }


 

 Future<void> linkedin() async {
    final Uri _url = Uri.parse(
        'https://www.linkedin.com/company/fertisystem?originalSubdomain=br'); // Substitua pela URL externa desejada
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  Future<void> wpp() async {
    final Uri _url = Uri.parse(
        'http://api.whatsapp.com/send?phone=555499291250'); // Substitua pela URL externa desejada
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
      body: SingleChildScrollView(child:Center(
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
                    color: Colors.black54),
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
                          backgroundColor:
                              const Color.fromRGBO(123, 172, 57, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/site.png',
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
                      onPressed: () async {
                          Uri phoneno = Uri.parse('tel:+555433141240');
                      if (await launchUrl(phoneno)) {
                          //dialer opened
                      }else{
                          //dailer is not opened
                      }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(123, 172, 57, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/telefone.png',
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
                      onPressed: () async {
                          Uri mailTo = Uri.parse('mailto:comercial@agromac.com.br?subject=Assunto do email&body=Corpo do email');
                      if (await launchUrl(mailTo)) {
                          //dialer opened
                      }else{
                          //dailer is not opened
                      }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(123, 172, 57, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/email.png',
                            width: 20,
                            height: 20,
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
                    color: Colors.black54),
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
                      onPressed: face,
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(123, 172, 57, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/face.png',
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
                      onPressed: insta,
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(123, 172, 57, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/insta.png',
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
                      onPressed: linkedin,
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(123, 172, 57, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/linkedin.png',
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
                      onPressed: wpp,
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(123, 172, 57, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/wpp.png',
                            width: 24,
                            height: 24,
                          ),
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
                'Entre em contato conosco!',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
          
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
            
                    padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                    child: Text('Nome',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),)
                  ),
                  SizedBox(height: 10,),
                 TextField(
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                     filled: true,
                      fillColor: Colors.black12,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20))),
                  ),
                
                   Padding(
                    padding: EdgeInsets.all(15),
                    child: Text('Email', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),)
                  ),
                  SizedBox(height: 10,),
                  
                 TextField(
                 controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                     filled: true,
                      fillColor: Colors.black12,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20))),
                  ),
            
                    Padding(
                    padding: EdgeInsets.all(15),
                    child: Text('Descrição', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),)
                  ),
                 TextField(
                 controller: descriptionController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                     filled: true,
                      fillColor: Colors.black12,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                  onPressed: () async {
                          Uri mailTo = Uri.parse('mailto:manuelaossanes@hotmail.com?subject=Email via app de $nameController&body=$descriptionController');
                      if (await launchUrl(mailTo)) {
                          //dialer opened
                      }else{
                          //dailer is not opened
                      }
                      },
                  
                  child: Text('Enviar',
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                   ),),
            
                    style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    elevation: 10.0,
                    backgroundColor: const Color.fromRGBO(123, 172, 57, 100),
                     padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ))
                ),
                ],
              ),
            )
          ],
        ),
      ),
      ),
    );
  }
 
  
}
