import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FoodListItemComponent extends StatelessWidget {
  final int index;

  const FoodListItemComponent({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://picsum.photos/300/500?random=$index",
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF000000),
                Color(0x00000000),
                Color(0x00000000),
              ],
            ),
          ),
          padding: EdgeInsets.only(left: 25, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "KFC",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    "4.9",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 1.6,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    CupertinoIcons.star_fill,
                    color: Colors.white,
                    size: 17,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
