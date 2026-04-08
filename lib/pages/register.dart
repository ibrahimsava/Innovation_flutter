import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _estCoche = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Couleur de fond de la page
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              // Bouton Retour
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_ios, size: 30, color: Colors.white),
                  ),
                  const Text("back",
                    style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 50),

              // --- DÉBUT DU BLOC BACKGROUND ---
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white, // Couleur du bloc
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    const Text("Get Started",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    const SizedBox(height: 25),

                    // Champ Nom
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Full Name",
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Champ Email
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Champ Password
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.lock),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Checkbox (Attention : texte mis en noir pour être visible sur le blanc)
                    CheckboxListTile(
                      title: const Text("D'accord pour procéder ?",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                      value: _estCoche,
                      onChanged: (bool? val) => setState(() => _estCoche = val ?? false),
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                    ),

                    const SizedBox(height: 15),

                    // Bouton Sign Up
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text("Sign up!",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // --- FIN DU BLOC BACKGROUND ---

              const SizedBox(height: 30),

              // Zone Social Media
              const Text("Sign up With", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.facebook, size: 35, color: Colors.white)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.apple, size: 35, color: Colors.white)),
                ],
              ),
              const SizedBox(height: 20),
              const Text("Avez-vous déjà un compte? Sign in", style: TextStyle(color: Colors.white)),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
