import 'package:flutter/material.dart';
import 'package:inovation_ib/pages/Articles.dart';
import 'package:inovation_ib/pages/HomePage.dart';
import 'package:inovation_ib/pages/products.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
           theme:  ThemeData(
           scaffoldBackgroundColor: Colors.grey[300],
         ),
        debugShowCheckedModeBanner: false,
        home: ProductListPage(),
          initialRoute: '/',
          routes: {
            '/about': (context) => Articles(),
          },

      
    );
  }
}

