import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   
      bringveg(boolthaila: true);
    return  MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData( 
        primarySwatch: Colors.deepOrange,
        fontFamily: 'Lato',
      ),
     routes: {
      "/":(context)=>const Login(),
      "/home":(context)=>const Home(),
     },
       
    );
  }
  bringveg({@required boolthaila,int rupees=10})
{
  
}

}