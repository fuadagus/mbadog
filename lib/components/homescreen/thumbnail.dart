import 'package:flutter/material.dart';
import 'package:mbadog/model.dart';

class Thumbnail extends StatelessWidget {
  final int pictureIndex;
  Thumbnail(this.pictureIndex, {Key? key}) : super(key: key);
  final _restaurantList = restaurant["restaurants"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: Image.network(
          _restaurantList[pictureIndex]["pictureId"],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
