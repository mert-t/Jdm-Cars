
import 'package:flutter/material.dart';
import 'package:neon/neon.dart';

class NeonText extends StatelessWidget {
final String text;
final MaterialColor color;

  const NeonText({
    Key? key,
    required this.text,required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neon(
      text: text,
      color: color,
      fontSize: 20,
      font: NeonFont.Membra,
      flickeringText:false,
      glowing: true, 
      
    );
  }
}
