import 'package:flutter/cupertino.dart';
import 'package:flutter_day1/home/components/categoriesDetails.dart';

class TabbarComponent extends StatelessWidget {
  final itemList = [
    {
      'label': 'Descubra',
      'icon': CupertinoIcons.circle_grid_hex,
      'active': true,
    },
    {
      'label': 'Minha Lista',
      'icon': CupertinoIcons.square_favorites_alt,
      'active': false,
    },
    {
      'label': 'Minhas Compras',
      'icon': CupertinoIcons.briefcase,
      'active': false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25, left: 20),
      height: 70,
      child: ListView(
        shrinkWrap: true,
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: itemList
            .map((tabItem) => TabbarItemComponent(
                  item: tabItem,
                ))
            .toList(),
      ),
    );
  }
}


