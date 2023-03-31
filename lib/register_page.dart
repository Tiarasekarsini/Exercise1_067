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
              backgroundColor: Colors.amber,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Column(children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                    'https://cf.shopee.vn/file/12bcce0dad63a853e6bddb67f76c869e'),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Text(
                  'Register',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber),
                ),
              ],
            ),
          )
        ],
      ))),
    );
  }
}
