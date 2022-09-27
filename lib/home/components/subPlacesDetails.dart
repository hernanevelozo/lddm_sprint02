// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';

class FoodListItemComponent extends StatelessWidget {
  final int index;

  const FoodListItemComponent({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://picsum.photos/300/500?random=$index",
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.only(left: 49, top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
      Column(
        children: [
          SizedBox(height: 150),
          Icon(
            Icons.preview,
            color: Colors.black87,
            size: 80,
          ),
        ],
      ),
    ]);
  }
}
