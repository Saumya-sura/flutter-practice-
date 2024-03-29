import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});
final a=10;
final name="sam";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("First App"),
      ),
      body:Center( 
        child: Container( 
          child: Text("Hello to $a by $name"),
        ),
      ),
    drawer:  const Drawer(),
    );
  }
}