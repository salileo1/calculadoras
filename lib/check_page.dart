import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'geral_page.dart';
import 'login_page.dart';

class checkPage extends StatefulWidget {
  const checkPage({super.key});

  @override
  State<checkPage> createState() => _checkPageState();
}

class _checkPageState extends State<checkPage> {
  
  StreamSubscription? streamSubscription;

  @override
  initState() {
    streamSubscription = FirebaseAuth.instance .authStateChanges()
      .listen((User? user) {
        if (user == null) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
        } else {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GeralPage()));
        }
      });
    super.initState();
  }
  
  @override
  void dispose(){
    streamSubscription!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}