import 'package:flutter/material.dart';

class MyTheme
{
  static ThemeData get light  =>ThemeData( 
        primarySwatch: Colors.deepOrange,
        fontFamily: 'Lato',
      );

      static ThemeData get dark =>ThemeData( 
        brightness:Brightness.dark,
      );
}