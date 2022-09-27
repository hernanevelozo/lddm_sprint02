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
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 330, top: 45),
              child: IconButton(
                icon: Icon(Icons.other_houses),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 9,
                    sigmaY: 9,
                  ),
                  child: Container(
                    color: Colors.white.withOpacity(0.59),
                    padding: EdgeInsets.all(30),
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Possibilidade: Destino",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.only(right: 15),
                        ),
                        Row(
                          children: [
                            Text(
                              "Procurando...     ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 2),
                            Icon(
                              Icons.explore,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et elit sed tellus dictum vehicula euismod ac ex. Ut arcu enim, tristique facilisis fringilla quis, euismod vel ligula. Integer tincidunt enim massa, a vulputate dui imperdiet.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            _locationTag('Exclusivo'),
                            _locationTag('Seguro'),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(
                              Icons.chrome_reader_mode,
                              color: Colors.black26,
                            ),
                            SizedBox(width: 14, height: 50),
                            Text(
                              "Interior sofisticado ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.thermometer_snowflake,
                              color: Colors.black26,
                            ),
                            SizedBox(width: 14, height: 50),
                            Text(
                              "Baixa temperatura",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.nature_people,
                              color: Colors.black26,
                            ),
                            SizedBox(width: 14, height: 50),
                            Text(
                              "Contato com a vida selvagem",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        TextButton(
                            style: TextButton.styleFrom(
                          foregroundColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY: 5,
                  ),
                  child: Container(
                    color: Colors.white.withOpacity(0.59),
                    padding: EdgeInsets.all(30),
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Detalhes do pacote",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et elit sed tellus...',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
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
        color: Color.fromARGB(255, 246, 232, 185).withOpacity(0.5),
      ),
    );
  }
}
