import 'package:flutter/material.dart';

class Menus extends StatelessWidget {
  const Menus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Menus",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Align(alignment: Alignment.topLeft, child: Text("Foods")),
        Align(alignment: Alignment.topLeft, child: Text("Drinks")),
      ],
    );
  }
}
