import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(padding: EdgeInsets.only(top: 25, left: 0),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
               onPressed:()=>Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios,
          size: 30,
          color: Colors.white,)),
            ],
          )

        ],
      ),
      )
    );
  }
}
