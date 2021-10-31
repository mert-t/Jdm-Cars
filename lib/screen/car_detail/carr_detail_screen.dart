import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jdm/model/nissan_car_model.dart';
import 'package:jdm/screen/login/components/social_card.dart';

class CarDetail extends StatefulWidget {
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
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
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
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.black,
                            size: 30.0,
                          ),
                          onPressed: () => Navigator.pop(context)),
                      Row(
                        children: [
                          IconButton(
                              icon: Icon(Icons.person_outlined,
                                  color: Colors.black, size: 33.0),
                              onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 20.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Text(
                          widget.car.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2),
                        ),
                        Icon(
                          Icons.car_repair_rounded,
                          size: 30,
                          color: Colors.white54,
                        )
                      ]),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 380.0,
                        height: 90.0,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.withOpacity(0.4)),
                        child: Row(
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                child: Text(
              
                                  widget.car.detail,
                                  style: TextStyle(color: Colors.white,
                                  letterSpacing: 1.5,fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30.0, 
                      ),
                      Container(
                        
                        height:80,
                        width: 380,
                        child: Row(
                           
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                SocialCard(
                                    icon: "assets/icons/service.png", press: () {},color1: Colors.blue.withOpacity(0.5),color2: Colors.white.withOpacity(0.6),),
                                Text("Service",style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            Column(
                              children: [
                                SocialCard(
                                    icon: "assets/icons/picture.png", press: () {},color1: Colors.blue.withOpacity(0.5),color2: Colors.white.withOpacity(0.6),),
                                Text("Pictures",style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            Column(
                              children: [
                                SocialCard(
                                    icon: "assets/icons/detail.png", press: () {},color1: Colors.blue.withOpacity(0.5),color2: Colors.white.withOpacity(0.6),),
                                Text("Details",style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          ],
                        ),
                      )
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
}
