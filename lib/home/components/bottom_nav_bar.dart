import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _index = 0;

  void _updateIndex(int indexValue) {
    setState(() {
      _index = indexValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25, left: 25, bottom: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: Colors.white.withOpacity(0.75),
            child: Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _bottomAppBarItem(
                    index: 0,
                    icon: CupertinoIcons.home,
                  ),
                  _bottomAppBarItem(
                    index: 1,
                    icon: CupertinoIcons.alarm,
                  ),
                  _bottomAppBarItem(
                    index: 2,
                    icon: CupertinoIcons.app,
                  ),
                  _bottomAppBarItem(
                    index: 3,
                    icon: CupertinoIcons.command,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _bottomAppBarItem({
    int index,
    IconData icon,
  }) {
    return Expanded(
      child: ClipOval(
        child: RawMaterialButton(
          padding: EdgeInsets.only(top: 25, bottom: 15),
          onPressed: () => _updateIndex(index),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 25,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 5,
                width: 5,
                decoration: index == _index
                    ? BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5),
                      )
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
