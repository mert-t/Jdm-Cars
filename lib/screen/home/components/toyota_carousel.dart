import 'package:flutter/material.dart';
import 'package:jdm/model/toyota_model.dart';
import 'package:jdm/screen/login/components/neon_text.dart';
import 'package:neon/neon.dart';

class ToyotaCarousel extends StatelessWidget {
  const ToyotaCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //TODO Gesture Detector
      height: 300,
      child: ListView.builder(
        itemCount: toyotaCars.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext contex, int index) {
          ToyotaCar toyotaCar = toyotaCars[index];
          return Container(
            margin: EdgeInsets.all(10.0),
            width: 210.0,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  bottom: 28.0,
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.teal.withOpacity(0.5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 10.0),
                          Text(
                            "Year : ${toyotaCar.dateOfManu}",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Popularity: ${toyotaCar.popularity}",
                            style: TextStyle(
                              fontSize: 15.0,
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
                          image: AssetImage(toyotaCar.imageUrl),
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
                              text: toyotaCar.name,
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
    );
  }
}
