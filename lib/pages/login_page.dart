// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material( 
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png",
          fit:BoxFit.cover),
          SizedBox(
            height: 20.0,
          ),
         Text("hello world ",
        style:TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        ],
      ),
    );
  }
}