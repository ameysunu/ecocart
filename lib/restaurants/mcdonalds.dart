import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Donalds extends StatefulWidget {
  @override
  _DonaldsState createState() => _DonaldsState();
}

class _DonaldsState extends State<Donalds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor('#C8FCEA'),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Hexcolor('#C8FCEA'),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Mc Donald\'s',
          style: TextStyle(fontFamily: 'Poppins', color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Today's Specials.",
              style: TextStyle(
                  fontFamily: 'Poppins', color: Colors.black, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://www.mcdonalds.com/is/image/content/dam/usa/nfl/assets/meal/desktop/h-mcdonalds-Double-Quarter-Pounder-with-Cheese-Extra-Value-Meals.jpg'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Double Quarter Pounder® Meal",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "\$7.30",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://www.mcdonalds.com/is/image/content/dam/usa/nfl/assets/meal/desktop/h-mcdonalds-Filet-O-Fish-Extra-Value-Meals.jpg'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Filet o Fish",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "\$6.10",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://www.mcdonalds.com/is/image/content/dam/usa/nfl/assets/meal/desktop/h-mcdonalds-Hamburger.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Happy Meal",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "\$9.32",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
