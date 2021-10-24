import 'package:flutter/material.dart';
import 'package:jdm/constant/sized_box_constant.dart';
import 'package:jdm/model/nissan_car_model.dart';
import 'package:jdm/screen/login/components/background_image.dart';
import 'package:jdm/screen/login/components/neon_text.dart';
import 'package:neon/neon.dart';

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
          body: Column(
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
                    Text("See All"),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                //TODO Gesture Detector
                height: 300,
                child: ListView.builder(
                  itemCount: cars.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext contex, int index) {
                    NissanCar car = cars[index];
                    return Container(
                      margin: EdgeInsets.all(10.0),
                      width: 210.0,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            bottom: 15.0,
                            child: Container(
                              height: 120,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.purple.withOpacity(0.5),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  
                                  children: [
                                    SizedBox(height: 10.0),
                                    Text(
                                      "Year : ${car.dateOfManu}",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox( 
                                      height: 5.0,
                                    ),
                                    Text(
                                      "Popularity: ${car.popularity}",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0,
                                ),
                              ],
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image(
                                    height: 180.0,
                                    width: 180.0,
                                    image: AssetImage(car.imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  left: 10.0,
                                  bottom: 10.0,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      NeonText(
                                        text: car.name,
                                        color: Colors.blue,
                                        fontSize: 20.0,
                                        font: NeonFont.NightClub70s,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
