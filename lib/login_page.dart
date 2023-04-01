import 'package:exercise1_067/home_page.dart';
import 'package:exercise1_067/register_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String? name;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/2560px-International_Pok%C3%A9mon_logo.svg.png',
                width: 400,
                height: 300,
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    Text(
                      "Let's get started",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Text(
                              "There's No Sense In Going Out Of\n Your Way To Get Somebody To Like You.",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
                    Container(
                      padding: const EdgeInsets.only(left: 25),
                      margin: const EdgeInsets.only(top: 50),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Name',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.teal,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 5),
                        margin: const EdgeInsets.only(right: 30, left: 30),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Enter your name",
                                prefixIcon:
                                    Icon(Icons.person, color: Colors.teal),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter your name";
                                }
                                return null;
                              },
                              onSaved: (value) {
                                name = value;
                              },
                            ),
                          ],
                        )),
                    Container(
                      padding: const EdgeInsets.only(left: 25),
                      margin: const EdgeInsets.only(top: 20),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Password',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.teal,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      margin: const EdgeInsets.only(right: 30, left: 30),
                      child: Column(
                        children: [
                          TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Enter your password",
                                prefixIcon:
                                    Icon(Icons.lock, color: Colors.teal),
                                suffixIcon: Icon(Icons.visibility)),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your password";
                              } else if (value.length < 6) {
                                return "password must be at least 6 characters";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              password = value;
                            },
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  ElevatedButton(
                                    child: const Text('Sign In'),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.teal,
                                        minimumSize: Size(double.infinity, 50),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40))),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        _formKey.currentState!.save();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => HomePage(
                                                      name: name,
                                                    )));
                                      }
                                      setState(() {});
                                    },
                                  )
                                ],
                              )),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            alignment: Alignment.center,
                            child: Column(children: [
                              Text.rich(TextSpan(
                                  text: 'Don\'t have an account?',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                        text: '  Sign Up',
                                        style: TextStyle(
                                            color: Colors.teal,
                                            fontWeight: FontWeight.bold),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        RegisterPage()));
                                          })
                                  ]))
                            ]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
