import 'package:flutter/material.dart';
import 'package:inovation_ib/pages/Articles.dart';
import 'package:inovation_ib/pages/Home.dart';
import 'package:inovation_ib/pages/HomePage.dart';
import 'package:inovation_ib/pages/products.dart';
import 'package:inovation_ib/pages/Home.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
           theme:  ThemeData(
           scaffoldBackgroundColor: Colors.blue[600],
         ),
        debugShowCheckedModeBanner: false,
        home: Home(),
          initialRoute: '/',
          routes: {
            '/about': (context) => Articles(),
          },

      
    );
  }
}

