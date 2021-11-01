import 'package:flutter/material.dart';
import 'package:jdm/constant/color_constant.dart';
import 'package:jdm/constant/sized_box_constant.dart';
import 'package:jdm/model/toyota_model.dart';
import 'package:neon/neon.dart';
import 'package:jdm/screen/login/components/background_image.dart';
import 'package:jdm/screen/login/components/neon_text.dart';
import 'components/nissan_carousel.dart';
import 'components/toyota_carousel.dart';
part 'components/home_string_values.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home_screen";
   final _HomeStringValues values = _HomeStringValues();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(image: AssetImage('assets/images/carbackk.jpg')),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
          SizedBoxConstants.instance.height60,
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: buildNissanText()),
          SizedBoxConstants.instance.height10,
                NissanCarousel(),
          SizedBoxConstants.instance.height10,
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: buildToyotaText()),
                ToyotaCarousel(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Row buildToyotaText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        NeonText(
          text: values.firstHeading,
          color: Colors.teal,
          fontSize: 20.0,
          font: NeonFont.Membra,
        ),
        NeonText(
          text: values.seeAll,
          color: Colors.teal,
          fontSize: 10.0,
          font: NeonFont.Membra,
        ),
      ],
    );
  }

  Row buildNissanText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        NeonText(
          text: values.secondHeading,
          color: Colors.purple,
          fontSize: 20.0,
          font: NeonFont.Membra,
        ),
        NeonText(
          text: values.seeAll,
          color: Colors.purple,
          fontSize: 10.0,
          font: NeonFont.Membra,
        ),
      ],
    );
  }
}
