import 'package:flutter/material.dart';
import 'package:jdm/screen/home/home_screen.dart';
import 'package:jdm/screen/login/login_screen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
 HomeScreen.routeName: (context) => HomeScreen(),
 


};