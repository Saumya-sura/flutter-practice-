import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utilis/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Removed the call to bringveg as it seems unrelated to the error

    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.light,
      initialRoute: MyRoutes.homeroute,
      routes: {
        "/": (context) => const Login(),
        MyRoutes.homeroute: (context) =>  HomePage(),
      },
    );
  }
}
