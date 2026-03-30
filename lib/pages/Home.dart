import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {





  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: Stack(
          children: [
           Positioned(
             top: 150,
               left: 0 ,
               right: 0,
               child:
           Column(
              children: [
                Text("UnPIX",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                ),
                 Text("Mobile",
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 14,
                 ),
                 ),

                SizedBox(height: 10,),

                Text("Bienvenue, vous trouverez ici ce que vous cherchez",
                style:  TextStyle(
                  color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                ),
              ],
     ),
    ),

            Positioned(
                top: 400,
                left: 0,
                right: 0,

                child: ClipPath(
                    clipper: MyCustomClipper(),
                child:
            Container(
          height: 500,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              topLeft: Radius.circular(50),
            )
          ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 80,
                  left: 140,
                  right: 50,

                ),
                  child:
              Column(
                children: [
                  Row(
                      children: [
                  Text("Menu Rapide"),
                  SizedBox(width: 5,),
                  Icon(Icons.info)
                  ]
                  ),
                  SizedBox(height: 50,),
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.eleven_mp),
                          Text("data")
                        ],
                      ),
                      SizedBox(width: 5,),
                      Icon(Icons.eleven_mp),
                      Text("data"),


                    ],
                  )

                ],
              ),
              ),

    )
            )

            )
              ]

            )
           );

  }
}

// cette classe me permet de faire du clipath
class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();


    // 1. On commence à gauche, un peu plus bas que le haut (à 60px du haut)
    path.lineTo(0, 60);

    // 2. On crée la courbe excentrée
    // quadraticBezierTo(X de contrôle, Y de contrôle, X final, Y final)
    path.quadraticBezierTo(
    size.width * 0.25, 0,      // Le sommet de la courbe est à 25% de la largeur (excentré à gauche)
    size.width, 80,

    // La courbe finit à droite, mais plus bas (80px)
    );

    // 3. On ferme le rectangle vers le bas
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}



