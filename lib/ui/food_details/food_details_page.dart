import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'food.dart';
import 'food_details_background.dart';
import 'food_details_content.dart';

class FoodDetailsPage extends StatelessWidget {
  final Food food;

  const FoodDetailsPage({Key key, this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider<Food>.value(
        value: food,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            FoodDetailsBackground(),
            FoodDetailsContent(),
          ],
        ),
      ),
    );
  }
}
