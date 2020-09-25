import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Tacobell extends StatefulWidget {
  @override
  _TacobellState createState() => _TacobellState();
}

class _TacobellState extends State<Tacobell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor('#FFE8F7'),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Hexcolor('#FFE8F7'),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Taco Bell',
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
                          'https://i.ibb.co/6Pj6fpz/ezgif-com-webp-to-png-1.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Boss Burrito",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "\$5.76",
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
                          'https://static.wixstatic.com/media/a5a6fb_d7c3153b6ec14e718b8625c72c3538a4~mv2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Double Tacos Supreme",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "\$8.98",
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
                          'https://i.ibb.co/fvQ98c8/ezgif-com-webp-to-png-2.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Crunchwrap Supreme™",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "\$12.32",
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
