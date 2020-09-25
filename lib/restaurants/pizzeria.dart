import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Pizzeria extends StatefulWidget {
  @override
  _PizzeriaState createState() => _PizzeriaState();
}

class _PizzeriaState extends State<Pizzeria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor('#F2ECFF'),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Hexcolor('#F2ECFF'),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Grimaldi\'s Pizzeria',
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
                          'https://www.seriouseats.com/recipes/images/2015/07/20150702-mushroom-truffle-pizza-1.jpg'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Portobello Napoleon",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "\$10.00",
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
                          'https://www.deliciousmagazine.co.uk/wp-content/uploads/2018/09/476993-1-eng-GB_beef-meatballs-in-tomato-sauce-768x1024.jpg'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Meatballs in a Red Sauce",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "\$7.00",
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
                          'https://www.cookingclassy.com/wp-content/uploads/2018/12/spinach-artichoke-dip-13-768x1148.jpg'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Spinach Artichoke Dip",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "\$10.32",
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
