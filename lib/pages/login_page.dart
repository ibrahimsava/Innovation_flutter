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
                  Text("Please Enter yours !",
                  style: TextStyle(
                    fontSize:  14,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              )
          ),


          Positioned(
                top:  250,
                left: 0,
                right: 0,
                bottom: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                 child: SingleChildScrollView( child:  Column(
                   children: [
                     Padding(padding: EdgeInsets.all(15)),
                     Text("Entrez votre email",
                     style: TextStyle(
                       fontSize: 14,
                     ),),
                     SizedBox(height: 5,),

                     SizedBox(
                       width: 280,
                       child: TextField(
                       obscureText: true,
                       decoration: InputDecoration(
                         labelText: " Email",
                         prefixIcon: Icon(Icons.email),
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(40),
                           borderSide: BorderSide(width: 3)
                         ),
                         focusedBorder: OutlineInputBorder(
                         ),
                       ),
                     )
                     ),
                     SizedBox(height: 5,),
                     Text("Entrez votre mot de pass",),

                    SizedBox( width: 280, child:  TextField(
                      obscureText: true,
                       decoration: InputDecoration(
                         labelText: "Passwords",
                         prefixIcon: Icon(Icons.password),
                         enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(40),
                             borderSide: BorderSide(width: 3)
                         ),
                         focusedBorder: OutlineInputBorder(
                         ),
                       ),
                     ),
                    ),
                     SizedBox(height: 40,),

                    TextButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.blue,
                       ),
                       onPressed: ()=> Navigator.pop(context),
                    child:  Text( "Click pour s'enregistrez",
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 16,
                       color: Colors.black
                     )
                       ,)
                     )

                   ],
                 ),)
              )
          )

          // 2. LES CHAMPS (Centrés proprement)

        ],
      ),
    );
  }
}

