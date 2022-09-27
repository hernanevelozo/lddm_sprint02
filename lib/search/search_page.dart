import 'package:flutter/material.dart';

import '../home/components/navBar.dart';
import './model/place_model.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  
  static List<PlacesModel> mainPlacesList = [
    PlacesModel("Cancun, Mexico",                double.parse((4849.99).toStringAsFixed(2)), 9.3, "https://picsum.photos/400/400?random=1"),
    PlacesModel("Truk, Micronesia",              double.parse((5259.99).toStringAsFixed(2)), 8.6, "https://picsum.photos/400/400?random=2"),
    PlacesModel("Raimbow Mountains, China",      double.parse((9153.99).toStringAsFixed(2)), 9.1, "https://picsum.photos/400/400?random=3"),
    PlacesModel("Richat Structure, Mauritania",  double.parse((8464.99).toStringAsFixed(2)), 7.8, "https://picsum.photos/400/400?random=4"),
    PlacesModel("Kusma Gyadi, Nepal",            double.parse((7894.99).toStringAsFixed(2)), 9.4, "https://picsum.photos/400/400?random=5"),
    PlacesModel("Abraham Lake, Canada",          double.parse((11999.99).toStringAsFixed(2)), 8.6, "https://picsum.photos/400/400?random=6"),
    PlacesModel("Yakutski, Russia",              double.parse((15659.99).toStringAsFixed(2)), 6.2, "https://picsum.photos/400/400?random=7"),
  ];

  List<PlacesModel> displayList = List.from(mainPlacesList);
  
  void updateList(String value) {
    setState(() {
      displayList = mainPlacesList
      .where((element) => 
        element.place_title.toLowerCase().contains(value.toLowerCase()))
      .toList();
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(index: 1),
      backgroundColor: Color(0xf9f9f9ff),
      body: Padding(
        padding: EdgeInsets.only(left:16, top: 40, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.blue,
                ),
                SizedBox(width: 10,),
                Text(
                  "Pesquisar local",
                  style: TextStyle(
                    //color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              style: TextStyle(color: Colors.lightBlue),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  //borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  borderSide: BorderSide.none
                ),
                hintText: "Ex: Diamantina, Brazil",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.lightBlue,
              ),
            ),
            SizedBox(height: 20.0),
            Divider(height: 0, thickness: 1,),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                separatorBuilder: (BuildContext context, int index) => const Divider(),
                itemCount: displayList.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(displayList[index].place_title,
                    style: TextStyle (
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'R\$ ${displayList[index].place_release_year}',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  trailing: 
                    /*prefixIcon: Icon(Icons.search),*/
                    /*prefixIconColor: Colors.lightBlue,*/
                    Text(
                      "${displayList[index].rating}",
                      style: TextStyle(
                        color: Colors.amber
                      ),
                    ),
                  leading: Image.network(displayList[index].place_poster_url),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
