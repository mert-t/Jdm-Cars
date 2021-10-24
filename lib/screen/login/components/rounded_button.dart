import 'package:flutter/material.dart';
import 'package:jdm/constant/color_constant.dart';
import 'package:jdm/screen/home/home_screen.dart';

class RoundedButton extends StatelessWidget {
  final String buttonText;
  const RoundedButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: ColorConstants.instance.white)
      ),
      child: FlatButton(
        onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            buttonText,style: TextStyle(color: ColorConstants.instance.white,fontSize: 20),
          ),
        ),
      ),
    );
  }
}
