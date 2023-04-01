import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, this.name});
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                  margin: const EdgeInsets.only(right: 110),
                  alignment: Alignment.topRight,
                ),
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://oyster.ignimgs.com/wordpress/stg.ign.com/2012/09/pokemon_bulbasaur_desktop_1057x1132_wallpaper-369004-610x653.png?width=1280&fit=bounds&height=720&quality=20&dpr=0.05'),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 3, left: 30),
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
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
            width: 370,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ), //tempat Child: Row
            child: Row(children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                width: 140,
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.teal.shade100,
                    borderRadius: BorderRadius.circular(15)),
                child: Image.network(
                  'https://assets.pokemon.com/assets/cms2/img/pokedex/full/185.png',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
              ),
              Column(children: [
                SizedBox(
                    width: 170,
                    height: 30,
                    child: Row(
                      children: [
                        const Text(
                          '#0185',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text('Sudowoodo',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal,
                                    fontSize: 15))),
                      ],
                    )),
                Container(margin: const EdgeInsets.only(left: 10)),
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 3, right: 120),
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.lime[800],
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text(
                          'Rock',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(children: [
                    Container(
                      margin:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      width: 180,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'Although it always pretends to be a tree, its composition appears more similar to rock than to vegetation.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ]),
                )
              ])
            ]),
          ),
          Container(
            margin: const EdgeInsets.only(top: 6, left: 30, right: 30),
            width: 370,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ), //tempat Child: Row
            child: Row(children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                width: 140,
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.teal.shade100,
                    borderRadius: BorderRadius.circular(15)),
                child: Image.network(
                  'https://assets.pokemon.com/assets/cms2/img/pokedex/full/186.png',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
              ),
              Column(children: [
                SizedBox(
                    width: 170,
                    height: 30,
                    child: Row(
                      children: [
                        const Text(
                          '#0186',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text('Politoed',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal,
                                    fontSize: 15))),
                      ],
                    )),
                Container(margin: const EdgeInsets.only(left: 10)),
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 3, right: 120),
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.blue[300],
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text(
                          'water',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(children: [
                    Container(
                      margin:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      width: 180,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'At nightfall, these Pokémon appear on the shores of lakes. They announce their territorial claims by letting out cries that sound like shouting.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ]),
                )
              ])
            ]),
          ),
          Container(
            margin: const EdgeInsets.only(top: 6, left: 30, right: 30),
            width: 370,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ), //tempat Child: Row
            child: Row(children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                width: 140,
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.teal.shade100,
                    borderRadius: BorderRadius.circular(15)),
                child: Image.network(
                  'https://assets.pokemon.com/assets/cms2/img/pokedex/full/187.png',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
              ),
              Column(children: [
                SizedBox(
                    width: 170,
                    height: 30,
                    child: Row(
                      children: [
                        const Text(
                          '#0187',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            child: Text('Hoppip',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal,
                                    fontSize: 15))),
                      ],
                    )),
                Container(margin: const EdgeInsets.only(left: 5)),
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15, right: 10),
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text(
                          'Grass',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 50),
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text(
                          'Flying',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
                      alignment: Alignment.centerLeft,
                      width: 180,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'This Pokémon is blown across vast distances by the wind. It is unclear where the Hoppip of Paldea originally came from.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ]),
                )
              ])
            ]),
          ),
          Container(
            margin: const EdgeInsets.only(top: 6, left: 30, right: 30),
            width: 370,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ), //tempat Child: Row
            child: Row(children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                width: 140,
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.teal.shade100,
                    borderRadius: BorderRadius.circular(15)),
                child: Image.network(
                  'https://assets.pokemon.com/assets/cms2/img/pokedex/full/188.png',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
              ),
              Column(children: [
                SizedBox(
                    width: 170,
                    height: 30,
                    child: Row(
                      children: [
                        const Text(
                          '#0188',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text('Skiploom',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal,
                                    fontSize: 15))),
                      ],
                    )),
                Container(margin: const EdgeInsets.only(left: 10)),
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15, right: 10),
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text(
                          'Grass',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 50),
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text(
                          'Flying',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(children: [
                    Container(
                      margin:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      width: 180,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'Skiploom enthusiasts can apparently tell where a Skiploom was born by the scent drifting from the flower on the Pokémon’s head.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ]),
                )
              ])
            ]),
          ),
        ]),
      ),
    );
  }
}
