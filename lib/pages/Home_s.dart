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
                   size: 30,          ),
              onPressed: () {
                // Cette commande permet de revenir à la page Home
                Navigator.pop(context);
              },
            ),
          ),

          // 2. TON CONTAINER (Avec largeur définie pour ne pas disparaître)
          Positioned(
            top: 150, // On le descend un peu pour laisser la place au bouton retour
            left: 20,  // Largeur définie par la gauche
            right: 20, // et la droite
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text("Page de Scan / Home_s"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}