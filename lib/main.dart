import 'package:flutter/material.dart';
import 'package:inovation_ib/pages/Articles.dart';
import 'package:inovation_ib/pages/Home.dart';
import 'package:inovation_ib/pages/HomePage.dart';
import 'package:inovation_ib/pages/Home_s.dart';
import 'package:inovation_ib/pages/home_t.dart';
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
             '/home': (context)=> const Home(),
            '/home_s': (context) => const Home_s(),
            '/home_t': (context) => const HomeT(),

          },

      
    );
  }
}

