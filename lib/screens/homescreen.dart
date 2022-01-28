import 'package:flutter/material.dart';
import 'package:mbadog/components/homescreen/city.dart';
import 'package:mbadog/components/homescreen/name.dart';
import 'package:mbadog/components/homescreen/rating.dart';
import 'package:mbadog/components/homescreen/thumbnail.dart';
import 'package:mbadog/model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final List _restaurantList = restaurant["restaurants"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mbadog"),
      ),
      body: ListView.builder(
        itemCount: _restaurantList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Thumbnail(index),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RestaurantName(index),
                        RestaurantCity(index),
                        RestaurantRating(index),
                      ],
                    ))
                  ],
                )),
          );
        },
      ),
    );
  }
}
