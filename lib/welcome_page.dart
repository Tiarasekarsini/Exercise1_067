import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:Padding(
          padding: const EdgeInsets.all(65),
          child:Column(
            children: [
              Text(
                'Pokedex.',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),Container(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text(
                      'Welcome to Pokedex\nYou can find your favorite pokemon here',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade600,
                      ),textAlign: TextAlign.center,
                    )
                  ],
                ),
              )
            ],
          ),
          )
        )
    );
  }
}