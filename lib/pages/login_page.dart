import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          // 1. BOUTON RETOUR
          Positioned(
            top: 25,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Navigator.pop(context),
            ),
          ),

          // 2. LES CHAMPS (Centrés proprement)
          Center( // Utilise Center au lieu d'une Column seule dans un Stack
            child: Container(
              width: 320, // Un peu plus large pour le confort
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)], // Optionnel: pour voir le cadre
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Important: le container s'adapte au contenu
                children: [
                  // CHAMP EMAIL
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: const Icon(Icons.person),
                      // Bordure au repos
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(width: 3, color: Colors.blue),
                      ),
                      // Bordure quand on clique (C'est ça qui manquait !)
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(width: 3, color: Colors.blueAccent),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // CHAMP MOT DE PASSE
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Mot de passe",
                      prefixIcon: const Icon(Icons.lock),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 3, color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 3, color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  ElevatedButton(
                    onPressed: () {
                      print("Tentative de connexion...");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(double.infinity, 50), // Prend toute la largeur
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "SE CONNECTER",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

