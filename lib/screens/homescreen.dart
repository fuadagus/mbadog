import 'package:flutter/material.dart';
import 'package:mbadog/components/homescreen/city.dart';
import 'package:mbadog/components/homescreen/name.dart';
import 'package:mbadog/components/homescreen/rating.dart';
import 'package:mbadog/components/homescreen/thumbnail.dart';
import 'package:mbadog/model.dart';
import 'package:get/get.dart';
import 'package:mbadog/screens/detailscreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final List _restaurantList = restaurant["restaurants"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: MediaQuery.of(context).padding.top + kToolbarHeight,
          child: Image.asset(
            "assets/images/logooutline.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.recommend,
                              size: 30,
                            ),
                          ),
                          TextSpan(
                            text: "Recomendation",
                          )
                        ],
                      ),
                      style: Theme.of(context).textTheme.headline5,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "restaurants recommendation for you!",
                      style: Theme.of(context).textTheme.caption,
                    ),
                  )
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _restaurantList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 24.0, top: 8, bottom: 8),
                  child: InkWell(
                    onTap: () => Get.to(DetailScreen(index)),
                    child: SizedBox(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Thumbnail(index),
                            Container(
                              child: Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        RestaurantName(index),
                                        RestaurantCity(index),
                                      ],
                                    ),
                                    RestaurantRating(index),
                                  ],
                                ),
                              )),
                            )
                          ],
                        )),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
