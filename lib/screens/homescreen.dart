import 'package:flutter/material.dart';
import 'package:mbadog/models/model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List _restaurantList = restaurant["restaurants"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _restaurantList.length,
      itemBuilder: (context, index) {
        return Container(
          child: Text("test"),
        );
      },
    );
  }
}
