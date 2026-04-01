import 'package:flutter/material.dart';

class Home_s extends StatefulWidget {
  const Home_s({super.key});

  @override
  State<Home_s> createState() => _Home_sState();
}

class _Home_sState extends State<Home_s> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. LE BOUTON DE RETOUR MANUEL (Indispensable sans AppBar)
          Positioned(
            top: 25, // Positionné en haut
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios,
                  color: Colors.white,
                   size: 29,          ),
              onPressed: () {
                // Cette commande permet de revenir à la page Home
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
               top: 25,
              right: 10,
              child: InkWell(
                child: IconButton(
                    icon: Icon(Icons.notification_add,
                      color: Colors.white,
                      size: 30,
                    ),
                onPressed: (){
                      Navigator.pushNamed(context, '/');
                },),
              )
          ),


          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child:
               Column(
                 children: [
                   Text("UNIPIX",
                   style: TextStyle(
                     fontSize: 30,
                   fontWeight: FontWeight.bold,
                   color: Colors.white),
                   ),
                   Text("Mobile",
                     style: TextStyle(
                         color: Colors.white,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   SizedBox(
                     height: 8,
                   ),
                   Text("Saldo rekenning utama",
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                     fontSize: 20,
                   ),)
                   
                 ],
               ),
          ),




          Positioned(
              top: 300,
              right: 0,
              left: 0,
              bottom: 0,
            child: ClipPath(
                clipper: MyCustomClipper(),

              child:
          Container(
            height: 300,
            color: Colors.grey[100],
          )
          ),
          ),

          // 2. TON CONTAINER (Avec largeur définie pour ne pas disparaître)
          Positioned(
            top: 220, // On le descend un peu pour laisser la place au bouton retour
            left: 20,  // Largeur définie par la gauche
            right: 20, // et la droite
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
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
          ),
          Positioned(
            top: 500,
              left: 5,
              child: Column(
                children: [
                  Text("data du jour",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 16, top: 12),
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    
                    child: Row(
                      children: [
                    Column(
                        children: [
                    IconButton(
                        icon: Icon(Icons.mobile_friendly_outlined),
                        onPressed: (){}, 
                        ),
                          Text("data",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,

                          ),
                          ),
                  ],
                    ),
                        SizedBox(width: 20,),
                        Column(

                          children: [
                            Text("Gopay",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text("Humbugan",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent,
                            )
                              ,)
                          ],
                        )
                   ],

                    ),


                  ),

                ],

              )
          ),
      Positioned(
        top: 500,
        right: 10,
        left: 250,
        child: Column(
          children: [
            Text(
              "Bonjour les miens",
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.only(left: 16, top: 12),
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.cached_outlined),
                        onPressed: () {},
                      ),
                      Text(
                        "data",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

          Positioned(
            top: 640,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Text("catanga kueguan",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            )
              ,),
                Text("See details",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,

                ),)

             ],
            )


          ),


          Positioned(
              top: 680 ,
              left: 20,
              right: 20,
              child: Container(
                height: 150,
                width: 490,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white70,
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(Icons.arrow_downward, color: Colors.green),
                                SizedBox(height: 5),
                                Text("Pemasukan"),
                                Text("Rp0", style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        // 🔸 Divider vertical
                        Container(
                          height: 100,
                          width: 3,
                          color: Colors.grey.shade300,
                        ),
                        // Bloc droit
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(Icons.arrow_upward, color: Colors.red),
                                SizedBox(height: 5),
                                Text("Pengeluaran"),
                                Text("Rp0", style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // 🔸 Divider horizontal
                    Divider(
                      height: 1,
                      color: Colors.grey.shade300,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Selisih Rp0",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                  ],
                ),
              )
          ),


        ],
      ),
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
        child: Icon(icon, size: 20, color: Colors.blueAccent),
      ),
      const SizedBox(height: 8),
      Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
    ],
  );
}