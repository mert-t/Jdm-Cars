import 'package:flutter/material.dart';

class SocialCard extends StatelessWidget {
  final String icon;
  final Function() press;
  const SocialCard({
    Key? key,
    required this.icon,
    required this.press,
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
          color: Colors.purple.withOpacity(0.2),
          shape: BoxShape.circle,
        ),
        child:Image.asset(icon,color: Colors.red.withOpacity(0.6),),
      ),
    );
  }
}
