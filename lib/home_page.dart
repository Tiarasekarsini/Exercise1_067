import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, this.name, this.password});
  final String? name;
  final String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ini Nama : $name'),
            Text('Ini Email: $password'),
          ],
        ),
      ),
    );
  }
}