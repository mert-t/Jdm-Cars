import 'package:flutter/material.dart';
import 'package:neon/neon.dart';

class BuildTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final bool obscure;
  const BuildTextField({
    Key? key,
    required this.hintText,
    required this.labelText, required this.obscure,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        fillColor: Colors.purple.withOpacity(0.3),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
         
        labelText: labelText,
        labelStyle:
            TextStyle(color: Colors.white, fontSize: 20, letterSpacing: 1.2),
      ),
      cursorColor: Colors.white30,
      obscureText: obscure,
    );
  }
}
