import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, this.name});
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 50, left: 30, right: 20),
              child: Row(
                children: [
                  Text.rich(TextSpan(
                      text: 'Hallo,',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: '$name',
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 20,
                                fontWeight: FontWeight.bold))
                      ])),
                  Container(
                    padding: const EdgeInsets.only(right: 150),
                  ),
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: NetworkImage(
                        'https://oyster.ignimgs.com/wordpress/stg.ign.com/2012/09/pokemon_bulbasaur_desktop_1057x1132_wallpaper-369004-610x653.png?width=1280&fit=bounds&height=720&quality=20&dpr=0.05'),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 10, left: 30),
              child: Column(children: [
                Text(
                  'Pokedex',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                )
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, right: 30, left: 30),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search Pokemon',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.grey.shade200),
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
