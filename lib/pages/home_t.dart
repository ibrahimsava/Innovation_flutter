import 'package:flutter/material.dart';


class HomeT extends StatefulWidget {
  const HomeT({super.key});

  @override
  State<HomeT> createState() => _HomeTState();
}

class _HomeTState extends State<HomeT> {
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
        ],
      ),

    );
  }
}
