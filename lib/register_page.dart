import 'package:exercise1_067/home_page.dart';
import 'package:exercise1_067/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  String? name;
  String? email;
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 45, left: 20),
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
                  },
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Column(children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                        'https://cf.shopee.vn/file/12bcce0dad63a853e6bddb67f76c869e'),
                  )
                ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 25),
                margin: const EdgeInsets.only(top: 20),
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
                          prefixIcon: Icon(Icons.person, color: Colors.teal),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your name";
                          } else if (value.length < 6) {
                            return "Name must be at least 6 characters";
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
                    'Email',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                  padding: const EdgeInsets.only(top: 5),
                  margin: const EdgeInsets.only(right: 30, left: 30),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter your email",
                          prefixIcon: Icon(Icons.mail, color: Colors.teal),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your email";
                          } else if (!value.contains('@')) {
                            return "Please enter a valid email";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          email = value;
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
                  )),
              Container(
                  padding: const EdgeInsets.only(top: 5),
                  margin: const EdgeInsets.only(right: 30, left: 30),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter your password",
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.teal,
                            ),
                            suffixIcon: Icon(Icons.visibility)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your password";
                          } else if (value.length < 6) {
                            return "Password must be at least 6 characters";
                          }
                          return null;
                        },
                      )
                    ],
                  )),
              Container(
                padding: const EdgeInsets.only(left: 25),
                margin: const EdgeInsets.only(top: 20),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Re-Password',
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
                            hintText: "Re-Enter Password",
                            prefixIcon: Icon(Icons.lock, color: Colors.teal),
                            suffixIcon: Icon(Icons.visibility)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your password";
                          } else if (value != _passwordController.text) {
                            return "Password must be the same";
                          }
                          return null;
                        },
                        /*onSaved: (value) {
                          password = value;
                        },*/
                      )
                    ],
                  )),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Column(children: [
                  ElevatedButton(
                    child: const Text('Register'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
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
                  ),
                ]),
              )
            ],
          ),
        )));
  }
}
