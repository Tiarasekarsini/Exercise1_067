

import 'package:exercise1_067/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            margin: EdgeInsets.only(top: 45, left:20),
            child: (
              FloatingActionButton(onPressed: (){
                Navigator.pop(context, MaterialPageRoute(builder: (context) => const LoginPage()));
              }, backgroundColor: Colors.amber,
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),)
            ),
          )),
      ),
    );
  }
}