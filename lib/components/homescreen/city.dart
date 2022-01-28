import 'package:flutter/material.dart';
import 'package:mbadog/model.dart';

class RestaurantCity extends StatelessWidget {
  final int cityIndex;
  RestaurantCity(this.cityIndex, {Key? key}) : super(key: key);
  final _restaurantList = restaurant["restaurants"];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        _restaurantList[cityIndex]["city"],
        textAlign: TextAlign.start,
      ),
    );
  }
}
