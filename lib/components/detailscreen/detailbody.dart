import 'package:flutter/material.dart';
import 'package:mbadog/components/detailscreen/description.dart';
import 'package:mbadog/components/detailscreen/menus.dart';
import 'package:mbadog/components/homescreen/city.dart';
import 'package:mbadog/components/homescreen/rating.dart';
import 'package:mbadog/model.dart';

class DetailscreenBody extends StatelessWidget {
  final int detailIndex;
  DetailscreenBody(this.detailIndex, {Key? key}) : super(key: key);
  final _restaurantList = restaurant["restaurants"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          RestaurantCity(detailIndex),
          RestaurantRating(detailIndex),
          SizedBox(
            height: 10,
          ),
          Description(detailIndex),
          SizedBox(
            height: 10,
          ),
          Menus()
        ],
      ),
    );
  }
}
