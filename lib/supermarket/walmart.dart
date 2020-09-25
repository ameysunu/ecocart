import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Walmart extends StatefulWidget {
  @override
  _WalmartState createState() => _WalmartState();
}

class _WalmartState extends State<Walmart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor('#C8FCEA'),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Hexcolor('#C8FCEA'),
        elevation: 0,
        title: Text(
          "Walmart",
          style: TextStyle(fontFamily: 'Poppins', color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Candies & Sweets",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
              ),
            ),
            //First Row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height: 180,
                      width: 130,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: Image.network(
                                  'https://images-na.ssl-images-amazon.com/images/I/81%2BIoSLoDcL._SL1500_.jpg'),
                            ),
                            Text(
                              "Reese's PB\n cups",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                            Text(
                              "\$4.65",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 130,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: Image.network(
                                  'https://images-na.ssl-images-amazon.com/images/I/41jARctSvDL.jpg'),
                            ),
                            Text(
                              "Cadbury\nBournville",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                            Text(
                              "\$6.25",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 130,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: Image.network(
                                  'https://images-na.ssl-images-amazon.com/images/I/61SZTkQylPL._SL1000_.jpg'),
                            ),
                            Text(
                              "Tara's Sea\nSalt Caramel",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                            Text(
                              "\$10.92",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 130,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                    'https://images-na.ssl-images-amazon.com/images/I/71KKRJFv2ZL._SL1500_.jpg'),
                              ),
                            ),
                            Text(
                              "M&M's",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                            Text(
                              "\$12.44",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Breakfast & Cereal",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
              ),
            ),
            //Second Row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height: 180,
                      width: 130,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: Image.network(
                                  'https://images-na.ssl-images-amazon.com/images/I/91u4-HRZBTL._SL1500_.jpg'),
                            ),
                            Text(
                              "Quaker Chewy\nGranola Bars",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                            Text(
                              "\$10.92",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 130,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: Image.network(
                                  'https://images-na.ssl-images-amazon.com/images/I/91mWJHJsbUL._SL1500_.jpg'),
                            ),
                            Text(
                              "belVita Breakfast Biscuits",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                            Text(
                              "\$3.23",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 130,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                    'https://images-na.ssl-images-amazon.com/images/I/61egF190XeL._AC_SL1280_.jpg'),
                              ),
                            ),
                            Text(
                              "Julian Bakery\nCereal",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                            Text(
                              "\$20.44",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 130,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                    'https://images-na.ssl-images-amazon.com/images/I/51f6T-Eh5dL.jpg'),
                              ),
                            ),
                            Text(
                              "SteelCut Oats\n1.95 Ounce",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                            Text(
                              "\$12.50",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Lunchables",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
              ),
            ),
            //Third Row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height: 180,
                      width: 130,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                    'https://images-na.ssl-images-amazon.com/images/I/91F9%2B-E5%2BFL._SL1500_.jpg'),
                              ),
                            ),
                            Text(
                              "Welch's Fruit Snacks",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                            Text(
                              "\$3.12",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 130,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: Image.network(
                                  'https://images-na.ssl-images-amazon.com/images/I/71IRSxVldhL._AC_SL1000_.jpg'),
                            ),
                            Text(
                              "Home-X Cheese\nand Crackers ",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                            Text(
                              "\$2.23",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 130,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: Image.network(
                                  'https://images-na.ssl-images-amazon.com/images/I/3145uhEaX6L.jpg'),
                            ),
                            Text(
                              " LUNCHABLES CHICKEN DUNKS",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                            Text(
                              "\$1.92",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 130,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                    'https://images-na.ssl-images-amazon.com/images/I/71DYKzwHCwL._SX679_PIbundle-6,TopRight,0,0_AA679SH20_.jpg'),
                              ),
                            ),
                            Text(
                              "Roasted peanuts\nand ham jerky",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 12),
                            ),
                            Text(
                              "\$3.12",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
