
import 'package:flutter/material.dart';
import 'package:neon/neon.dart';

class NeonText extends StatelessWidget {
final String text;
final MaterialColor color;
final double fontSize;
final NeonFont font;

  const NeonText({
    Key? key,
    required this.text,required this.color, this.fontSize = 20, this.font = NeonFont.Membra,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){},
      child: Neon(
        text: text,
        color: color,
        fontSize: fontSize,
        font: font,
        flickeringText:false,
        glowing: true, 
        
      ),
    );
  }
}
