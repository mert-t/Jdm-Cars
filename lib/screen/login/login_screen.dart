import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:jdm/constant/sized_box_constant.dart';
import 'package:jdm/core/base/base_state.dart';
import 'package:jdm/screen/login/components/background_image.dart';
import 'package:jdm/screen/login/components/rounded_button.dart';
import 'package:jdm/screen/login/components/social_card.dart';
import 'components/neon_text.dart';
import 'components/text_field.dart';

part 'components/login_string_values.dart';

class LoginScreen extends StatelessWidget with BaseState {
  static String routeName = "/login_screen";
  final _LoginStringValues values = _LoginStringValues();
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
                  buildTopText(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        buildTextFieldsandButton(),
                        sizedBoxConstants.height40,
                        buildSocialCard(),
                        sizedBoxConstants.height80,
                        buildNeonSignText()
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

  Container buildNeonSignText() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NeonText(
            text: values.signIn,
            color: Colors.green,
          ),
          NeonText(
            text: values.signUp,
            color: Colors.green,
          ),
        ],
      ),
    );
  }

  Row buildSocialCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SocialCard(icon: "assets/icons/github.png", press: () {}),
        SocialCard(icon: "assets/icons/google.png", press: () {}),
        SocialCard(icon: "assets/icons/discord.png", press: () {})
      ],
    );
  }

  Column buildTextFieldsandButton() {
    return Column(
      children: [
        BuildTextField(
          hintText: "Enter Email",
          labelText: "Email",
          obscure: false,
        ),
        sizedBoxConstants.height30,
        BuildTextField(
          hintText: "Enter Password",
          labelText: "Password",
          obscure: true,
        ),
        sizedBoxConstants.height50,
        RoundedButton(buttonText: values.login),
      ],
    );
  }

  Container buildTopText() {
    return Container(
      height: 130,
      child: Center(child: NeonText(text: values.topText, color: Colors.red)),
    );
  }
}
