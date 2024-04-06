// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_declarations, unused_local_variable, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    final imageUrl ="https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
        ),
        child: ListView(
          padding:EdgeInsets.zero,
          children: [
           
            DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Saumya sura "),
                accountEmail: Text("surasaumya17@gmail.com"),
                currentAccountPicture: CircleAvatar( 
                  backgroundImage: NetworkImage(imageUrl),
                )              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.amber,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.amber),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.amber,
              ),
              title: Text(
                "Mail",
                style: TextStyle(color: Colors.amber),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.amber,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.amber),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
