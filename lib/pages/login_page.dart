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
        SizedBox(
          height: 20.0,
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration( 
                  hintText: "Enter username",
                  labelText: "Username",
              
                ),
              ),
            ],
          ),
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
           
            hintText: "Enter password",
            labelText: "Password",
          ),
        ),
         SizedBox(
          height: 20.0,
          ),
          ElevatedButton(onPressed:(){
            print("Helo");
            
          } ,
          style: TextButton.styleFrom(),
           child: Text("Login"),
           
           )
        ],
        
        
      ),

          );
  }
}