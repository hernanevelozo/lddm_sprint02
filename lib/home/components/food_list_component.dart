import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'foot_list_item_component.dart';

class FoodListComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(right: 20, left: 20),
      shrinkWrap: true,
      clipBehavior: Clip.none,
      itemCount: 10,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 25,
        mainAxisSpacing: 25,
        childAspectRatio: 3 / 3.75,
      ),
      itemBuilder: (context, index) {
        return FoodListItemComponent(
          index: index,
        );
      },
    );
  }
}
