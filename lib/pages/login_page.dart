// ignore_for_file: prefer_const_constructors, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilis/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  final changedButton=false;
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key:_formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "hello $name",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                       validator: (value){
                  if(value!.isEmpty)
                  { 
                      return "Username  cannot be empty ";
                  }
                       },
                        
                       
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      }
                      
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
                validator: (value){
                  if(value!.isEmpty)
                  { 
                      return "Password cannot be empty ";
                  }
                },
              ),
              SizedBox(
                height: 20.0,
              ),
          
              
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeroute);
                },
                
                style: TextButton.styleFrom(),
                //child:changedButton ? Icon(Icons.done): Text("Login"),
                child: Text("login"),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
