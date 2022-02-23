import 'package:flutter/material.dart';
import 'package:mbadog/components/detailscreen/detailbody.dart';
import 'package:mbadog/components/homescreen/rating.dart';
import 'package:mbadog/constant.dart';
import 'package:mbadog/model.dart';

class DetailScreen extends StatelessWidget {
  final int index;
  DetailScreen(this.index, {Key? key}) : super(key: key);
  final _restaurantList = restaurant["restaurants"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, isScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  expandedHeight: 200,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.network(
                      _restaurantList[index]["pictureId"],
                      fit: BoxFit.cover,
                    ),
                    title: Container(
                      height: 24,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: <Widget>[
                              Text(
                                _restaurantList[index]["name"],
                                style: TextStyle(
                                  fontSize: 16,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 6
                                    ..color = Colors.white,
                                ),
                              ),
                              Text(
                                _restaurantList[index]["name"],
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    titlePadding:
                        EdgeInsets.only(left: 16, bottom: 16, right: 16),
                  ),
                )
              ];
            },
            body: DetailscreenBody(index)),
      ),
    );
  }
}
