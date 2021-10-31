import 'package:flutter/material.dart';

class SocialCard extends StatelessWidget {
  final String icon;
  final Function() press;
  final Color color1;
  final Color color2;

  const SocialCard({
    Key? key,
    required this.icon,
    required this.press,
    this.color1 = Colors.purple,
    this.color2= Colors.red,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(4),
        height: 50,
        width: 40,
        decoration: BoxDecoration(
          color: color1,
          shape: BoxShape.circle,
        ),
        child:Image.asset(icon,color: color2,),
      ),
    );
  }
}
