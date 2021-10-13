import 'package:flutter/material.dart';

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
        border: Border.all(color: Colors.white)
      ),
      child: FlatButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            buttonText,style: TextStyle(color: Colors.white,fontSize: 20),
          ),
        ),
      ),
    );
  }
}
