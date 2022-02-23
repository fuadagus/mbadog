import 'package:flutter/material.dart';
import 'package:mbadog/model.dart';

class Description extends StatelessWidget {
  int desIndex;
  Description(this.desIndex, {Key? key}) : super(key: key);
  final _restaurantList = restaurant["restaurants"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "About Us",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
              child: Align(
                  alignment: Alignment.center,
                  child: Text(_restaurantList[desIndex]["description"]))),
        ),
      ],
    );
  }
}
