import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlacePage extends StatelessWidget {
  final int index;

  const PlacePage({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Image.network(
              "https://picsum.photos/600/1000?random=$index",
              fit: BoxFit.cover,
              width: double.infinity,
              height: _size.height / 1.25,
            ),
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.white,
                  ],
                  stops: [
                    0.4,
                    0.7,
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 45),
              child: IconButton(
                icon: Icon(CupertinoIcons.back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10,
                  ),
                  child: Container(
                    color: Colors.white.withOpacity(0.65),
                    padding: EdgeInsets.all(35),
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "National Park # 1",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Istanbul, Turkey",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad repellat nihil recusandae ducimus et eum iusto saepe obcaecati.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            _locationTag('25 Hotels'),
                            _locationTag('12 Parks'),
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.map,
                              color: Colors.black26,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Turkey, Istanbul",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                          ),
                          /*height: 60,*/
                          /*minWidth: double.infinity,*/
                          onPressed: () {},
                          child: Text(
                            "Plan Your Next Trip Now",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _locationTag(String s) {
    return Container(
      child: Text(
        s,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
        right: 15,
        left: 15,
      ),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.blueAccent[100].withOpacity(0.5),
      ),
    );
  }
}
