
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key:key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(65),
          child: Column(
            children: [
              Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/2560px-International_Pok%C3%A9mon_logo.svg.png',
              width: 800,
              height: 200,
              ),Container(
                padding: const EdgeInsets.only(top:5),
                child: Column(
                  children: [
                    Text(
                      "Let's get started",
                      style:TextStyle(
                        fontSize: 30,
                        color:Colors.amber.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                    ),Container(
                      padding: const EdgeInsets.only(top:15),
                      child:Column(children: [
                        Text(
                          "There's No Sense In Going Out Of\n Your Way To Get Somebody To Like You.",
                          style:TextStyle(
                            fontSize:16,
                            color:Colors.grey.shade600,
                            fontWeight: FontWeight.bold) , textAlign: TextAlign.center,
                        )
                      ],)
                    ),Container(
                      
                    )
                  ],)
              )
            ],
          ),
          ),
      ),
    );
  }
}