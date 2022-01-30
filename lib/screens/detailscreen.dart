import 'package:flutter/material.dart';
import 'package:mbadog/components/detailscreen/detailbody.dart';
import 'package:mbadog/model.dart';

class DetailScreen extends StatelessWidget {
  final int index;
  DetailScreen(this.index, {Key? key}) : super(key: key);
  final _restaurantList = restaurant["restaurants"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, isScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  background: Padding(
                    padding: const EdgeInsets.only(bottom: 56.0),
                    child: Image.network(
                      _restaurantList[index]["pictureId"],
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    _restaurantList[index]["name"],
                    // style: Theme.of(context).textTheme.headline5,
                  ),
                  titlePadding: EdgeInsets.only(left: 16, bottom: 16),
                ),
              )
            ];
          },
          body: DetailscreenBody()),
    );
  }
}
