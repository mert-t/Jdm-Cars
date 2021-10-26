import 'package:flutter/material.dart';
import 'package:jdm/model/toyota_model.dart';
import 'package:neon/neon.dart';
import 'package:jdm/screen/login/components/background_image.dart';
import 'package:jdm/screen/login/components/neon_text.dart';

import 'components/nissan_carousel.dart';
import 'components/toyota_carousel.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home_screen";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          image: AssetImage('assets/images/carbackk.jpg'),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 60.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NeonText(
                        text: "Nissan",
                        color: Colors.purple,
                        fontSize: 20.0,
                        font: NeonFont.Membra,
                      ),
                      Text("See All",style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                NissanCarousel(),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NeonText(
                          text: "Toyota",
                          color: Colors.teal,
                          fontSize: 20.0,
                          font: NeonFont.Membra,
                        ),
                        Text("See All",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                ),
                ToyotaCarousel(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

