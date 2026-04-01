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
          ),
                  child: Padding(padding:
                  EdgeInsets.only(
                   top: 100,
                   left: 100,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Menu Rapide",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                      SizedBox(width: 10,),
                      Icon(Icons.outbond_outlined)
              ],
                  ),
            ),
              ),

              )

            ),
            Positioned(
              top: 600,
              left: 0,   // INDISPENSABLE pour la symétrie
              right: 0,  // INDISPENSABLE pour la symétrie
              child: Row(
                // Distribue l'espace uniformément entre les éléments
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildMenuIcon(Icons.book_online_rounded, "Booking"),
                  _buildMenuIcon(Icons.money, "UnPix Money"),
                  _buildMenuIcon(Icons.account_balance, "Puissa data"),
                  _buildMenuIcon(Icons.add_a_photo, "Dompet"),
                ],
              ),
            ),
            Positioned(
                right: 120,
                left: 15,
                bottom: 20,
                child:
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(

                    child:
                      Text("Login",
                        style: TextStyle(
                          color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        ),

                  ),
                  )

                )
            ),
            Positioned(
              bottom: 20,
                right: 30,
                left: 300,
                child: InkWell(
                  onTap: (){
                   Navigator.pushNamed(context, '/home_s');
                  },


                child: Container(
                  height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius: BorderRadius.circular(20),
                ),
                  child: Icon(Icons.qr_code_scanner,
                  color: Colors.white,
                  size: 40,),

            ),
            )
            ),

          ],




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



  // Fonction pour créer une icône de menu rapidement
 Widget _buildMenuIcon(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                  Colors.white, // Couleur de départ
                    Colors.blue[100]!, // Couleur d'arrivée
                  ],
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, spreadRadius: 1)
              ]
          ),
          child: Icon(icon, size: 30, color: Colors.blueAccent),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }


