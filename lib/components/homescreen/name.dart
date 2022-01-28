import 'package:flutter/material.dart';
import 'package:mbadog/model.dart';

class RestaurantName extends StatelessWidget {
  final int nameIndex;
  RestaurantName(this.nameIndex, {Key? key}) : super(key: key);
  final _restaurantList = restaurant["restaurants"];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(_restaurantList[nameIndex]["name"],
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.headline6),
    );
  }
}
