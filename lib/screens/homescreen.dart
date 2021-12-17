import 'package:flutter/material.dart';
import 'package:mbadog/models/model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List _restaurantList = restaurant["restaurants"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListView.builder(
            itemCount: _restaurantList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Image.network(
                            _restaurantList[index]["pictureId"],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 50,
                              child: Expanded(
                                child: Text(
                                  _restaurantList[index]["name"],
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                            Text(
                              _restaurantList[index]["city"],
                              textAlign: TextAlign.start,
                            )
                          ],
                        ))
                      ],
                    )),
              );
            },
          ),
        ),
      ),
    );
  }
}
