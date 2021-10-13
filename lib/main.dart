import 'package:flutter/material.dart';
import 'package:jdm/routes/routes.dart';
import 'package:jdm/screen/login/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
   routes: routes,
    );
  
  }
  
}