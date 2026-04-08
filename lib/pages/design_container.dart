import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            SizedBox(height: 40),

            // 🔥 Les deux boutons (Login / Signup)
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() => isLogin = true);
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: isLogin ? Colors.blue : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: isLogin ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() => isLogin = false);
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: !isLogin ? Colors.blue : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: !isLogin ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            // 🔥 Formulaire dynamique
            Expanded(
              child: SingleChildScrollView(
                child: isLogin ? buildLogin() : buildSignup(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLogin() {
    return Column(
      children: [
        TextField(decoration: InputDecoration(labelText: "Email")),
        SizedBox(height: 20),
        TextField(
          obscureText: true,
          decoration: InputDecoration(labelText: "Password"),
        ),
      ],
    );
  }

  Widget buildSignup() {
    return Column(
      children: [
        TextField(decoration: InputDecoration(labelText: "Full Name")),
        SizedBox(height: 20),
        TextField(decoration: InputDecoration(labelText: "Email")),
        SizedBox(height: 20),
        TextField(
          obscureText: true,
          decoration: InputDecoration(labelText: "Password"),
        ),
      ],
    );
  }
}