import 'package:flutter/material.dart';
import 'package:mbadog/model.dart';

class RestaurantRating extends StatelessWidget {
  final int ratingIndex;
  RestaurantRating(this.ratingIndex, {Key? key}) : super(key: key);
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
                Icons.star,
                size: 15,
              ),
            ),
            TextSpan(
              text: _restaurantList[ratingIndex]["rating"].toString(),
            ),
          ],
        ),
        style: Theme.of(context).textTheme.subtitle1,
        textAlign: TextAlign.start,
      ),
    );
  }
}
