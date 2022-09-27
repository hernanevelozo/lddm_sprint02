import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key key, this.index}) : super(key: key);
  final int index;

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  void _updateIndex(int indexValue) {
    setState(() {
      switch (indexValue) {
        case 0:
          Navigator.pushNamed(
            context,
            "/",
          );
          break;
        case 1:
          Navigator.pushNamed(
            context,
            "/search",
          );
          break;
        case 2:
          Navigator.pushNamed(
            context,
            "/settings",
          );
          break;
        case 3:
          Navigator.pushNamed(
            context,
            "/login",
          );
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    int index = widget.index;

    //return Scaffold(
      //body: Padding(
    return Padding(
      padding: EdgeInsets.only(right: 0, left: 0, bottom: 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: Colors.white.withOpacity(0.85),
            child: Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _bottomAppBarItem(
                    index: 0,
                    g_index: index,
                    icon: CupertinoIcons.home,
                  ),
                  _bottomAppBarItem(
                    index: 1,
                    g_index: index,
                    icon: CupertinoIcons.search,
                  ),
                  _bottomAppBarItem(
                    index: 2,
                    g_index: index,
                    icon: CupertinoIcons.gear,
                  ),
                  _bottomAppBarItem(
                    index: 3,
                    g_index: index,
                    icon: CupertinoIcons.person_alt_circle,
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
    int g_index,
    IconData icon,
  }) {
    return Expanded(
      child: ClipOval(
        child: RawMaterialButton(
          padding: EdgeInsets.only(top: 13, bottom: 6),
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
                decoration: index == g_index
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

class NewPageScreen extends StatelessWidget {
  final String texto;

  NewPageScreen(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(texto),
      ),
    );
  }
}
