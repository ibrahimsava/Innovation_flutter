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
          Positioned(
              top: 80,
               right: 50,
              left: 50,
              child:   Column(
                children: [
                  Text("Welcome to the login page",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Please Enter yours !")
                ],
              )
          ),


          Positioned(
                top:  250,
                left: 0,
                right: 0,
                bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),

              )
          )

          // 2. LES CHAMPS (Centrés proprement)

        ],
      ),
    );
  }
}

