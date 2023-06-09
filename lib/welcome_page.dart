import 'package:exercise1_067/login_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(65),
                child: Column(
                  children: [
                    Text(
                      'Pokedex.',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          Text(
                            'Welcome to Pokedex\nYou can find your favorite pokemon here',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade600,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 80),
                        child: Image.network(
                          'https://www.pngplay.com/wp-content/uploads/2/Pokeball-PNG-Pic-Background.png',
                          width: 250,
                          height: 250,
                        )),
                    Container(
                        padding: const EdgeInsets.only(top: 140),
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          backgroundColor: Colors.teal,
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ))));
  }
}
