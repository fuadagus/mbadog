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
      child: Text.rich(
        TextSpan(
          children: [
            WidgetSpan(
              child: Icon(
                Icons.location_pin,
                size: 15,
              ),
            ),
            TextSpan(
              text: _restaurantList[cityIndex]["city"],
            ),
          ],
        ),
        style: Theme.of(context).textTheme.subtitle1,
        textAlign: TextAlign.start,
      ),
    );
  }
}
