import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'subPlacesDetails.dart';

class FoodListComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(right: 10, left: 10),
      shrinkWrap: true,
      itemCount: 6,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 40,
        childAspectRatio: 3 / 3.0,
      ),
      itemBuilder: (context, index) {
        return FoodListItemComponent(
          index: index,
        );
      },
    );
  }
}
