import 'package:flutter/material.dart';
import '../../model/guests.dart';
import 'package:freshkatale/styleguide.dart';
import 'package:provider/provider.dart';

import 'food.dart';

class FoodDetailsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final food = Provider.of<Food>(context);
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
            child: Text(
              food.title,
              style: itemWhiteTitleTextStyle,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.24),
            child: FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '-  ',
                    style: itemLocationTextStyle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    Icons.people,
                    color: Colors.white,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    food.members,
                    style: itemLocationTextStyle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 140,
          ),
//          Padding(
//            padding: EdgeInsets.only(left: 16.0),
//            child: Text(
//              'GUESTS',
//              style: guestTextStyle,
//            ),
//          ),

          //The price and order widget
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Container(
              width: 230,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    food.price,
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade800),
                  ),
                  Container(
                    height: 25,
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  Container(
                    width: 120.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17.0),
                        color: Color(0XFFFF4700)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 25.0,
                            width: 25.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: Color(0XFFFF4700)),
                            child: Center(
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 25.0,
                            width: 25.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: Colors.white),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Color(0XFFFF4700),
                                size: 20.0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //Circular images
//          SingleChildScrollView(
//            scrollDirection: Axis.horizontal,
//            child: Row(
//              children: <Widget>[
//                for (final guest in guests)
//                  Padding(
//                    padding: const EdgeInsets.all(8),
//                    child: ClipOval(
//                      child: Image.asset(
//                        guest.imagePath,
//                        width: 90,
//                        height: 90,
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                  )
//              ],
//            ),
//          ),

          //Colored and uncolored text
          Padding(
            padding: EdgeInsets.all(16),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: food.punchLine1,
                  style: punchLine1TextStyle,
                ),
                TextSpan(text: food.punchLine2, style: punchLine2TextStyle),
              ]),
            ),
          ),
          if (food.description.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                food.description,
                style: itemLocationTextStyle,
              ),
            ),
          SizedBox(
            height: 20,
          ),

          //Gallery
          if (food.galleryImages.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16, bottom: 16),
              child: Text(
                'GALLERY',
                style: guestTextStyle,
              ),
            ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                for (final galleryImagePath in food.galleryImages)
                  Container(
                    margin:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(
                        galleryImagePath,
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
