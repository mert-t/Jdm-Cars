import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jdm/constant/color_constant.dart';
import 'package:jdm/constant/sized_box_constant.dart';
import 'package:jdm/model/nissan_car_model.dart';
import 'package:jdm/screen/login/components/social_card.dart';

class CarDetail extends StatefulWidget  {
  final NissanCar car;

  const CarDetail({Key? key, required this.car}) : super(key: key);

  @override
  _CarDetailState createState() => _CarDetailState();
}

class _CarDetailState extends State<CarDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                buildBackgroundImage(context),
                buildTopBar(context),
                Positioned(
                  left: 20.0,
                  bottom: 20.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildImageText(),
                      SizedBoxConstants.instance.height10,
                      buildScrollableTextContainer(),
                      SizedBoxConstants.instance.height30,
                      buildCarIcons()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildCarIcons() {
    return Container(
                      height: 80,
                      width: 380,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              SocialCard(
                                icon: "assets/icons/service.png",
                                press: () {},
                                color1: ColorConstants.instance.blue,
                                color2: ColorConstants.instance.white.withOpacity(0.6),
                              ),
                              Text("Service",
                                  style: TextStyle(color: ColorConstants.instance.white)),
                            ],
                          ),
                          Column(
                            children: [
                              SocialCard(
                                icon: "assets/icons/picture.png",
                                press: () {},
                                color1: ColorConstants.instance.blue,
                                color2: ColorConstants.instance.white.withOpacity(0.6),
                              ),
                              Text("Pictures",
                                  style: TextStyle(color:ColorConstants.instance.white)),
                            ],
                          ),
                          Column(
                            children: [
                              SocialCard(
                                icon: "assets/icons/detail.png",
                                press: () {},
                                color1: ColorConstants.instance.blue,
                                color2: ColorConstants.instance.white.withOpacity(0.6),
                              ),
                              Text(
                                "Details",
                                style: TextStyle(color: ColorConstants.instance.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
  }

  Container buildScrollableTextContainer() {
    return Container(
      width: 380.0,
      height: 90.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ColorConstants.instance.grey.withOpacity(0.4)),
      child: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                widget.car.detail,
                style: TextStyle(
                    color: ColorConstants.instance.white, letterSpacing: 1.5, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buildImageText() {
    return Row(children: [
      Text(
        widget.car.name,
        style: TextStyle(
            color: ColorConstants.instance.white,
            fontSize: 35.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2),
      ),
      Icon(
        Icons.car_repair_rounded,
        size: 30,
        color: ColorConstants.instance.white,
      )
    ]);
  }

  Padding buildTopBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: ColorConstants.instance.black,
                size: 30.0,
              ),
              onPressed: () => Navigator.pop(context)),
          Row(
            children: [
              IconButton(
                  icon: Icon(Icons.person_outlined,
                      color: ColorConstants.instance.black, size: 33.0),
                  onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }

  Container buildBackgroundImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorConstants.instance.black,
            offset: Offset(0.0, 2.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Hero(
        tag: widget.car.imageUrl,
        child: ClipRRect(
          child: Image(
            image: AssetImage(
              widget.car.imageUrl,
            ),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
