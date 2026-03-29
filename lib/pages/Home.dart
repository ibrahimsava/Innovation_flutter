import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {





  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body: Stack(

          children: [
            Column(
              children: [
                Text("UnPIX",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),)
              ],
            )

          ],
     ),
    );
  }
}
