import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:jdm/screen/login/components/background_image.dart';
import 'package:jdm/screen/login/components/rounded_button.dart';
import 'package:jdm/screen/login/components/social_card.dart';
import 'components/neon_text.dart';
import 'components/text_field.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/login_screen";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              top: false,
              child: Column(
                children: [
                  Container(
                    height: 130,
                    child: Center(
                        child: NeonText(text: "JDM CARS",color: Colors.red)),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                      Column(children: [ BuildTextField(
                          hintText: "Enter Email", labelText: "Email",obscure: false,),
                      SizedBox(height: 30),
                      BuildTextField(
                          hintText: "Enter Password", labelText: "Password",obscure: true,),
                      SizedBox(height: 50),
                      RoundedButton(buttonText: "Log In"),],),
                       
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SocialCard(
                                icon: "assets/icons/github.png", press: () {}),
                            SocialCard(
                                icon: "assets/icons/google.png", press: () {}),
                            SocialCard(
                                icon: "assets/icons/discord.png", press: () {})
                          ],
                        ),
                        SizedBox(height: 80.0),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              NeonText(text: "Sign In",color: Colors.green,),
                              NeonText(text: "Sign Up",color:Colors.green,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  
}
