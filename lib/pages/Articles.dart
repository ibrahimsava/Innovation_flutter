import 'package:flutter/material.dart';

class Articles extends StatefulWidget {
  const Articles({super.key});

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:  ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Retour"),
      )
      )

        );
  }
}
