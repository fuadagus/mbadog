import 'package:flutter/material.dart';
import 'package:mbadog/model.dart';

class Thumbnail extends StatelessWidget {
  final int pictureIndex;
  Thumbnail(this.pictureIndex, {Key? key}) : super(key: key);
  final _restaurantList = restaurant["restaurants"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 120,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          _restaurantList[pictureIndex]["pictureId"],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
