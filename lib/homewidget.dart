import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vestige/home.dart';
import 'package:vestige/restaurant.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    Home(),
    Restaurant(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Hexcolor('#FFDFCA'),
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.local_grocery_store,
                  color: Hexcolor('#5C6178')),
              title: new Text(
                'Supermarket',
                style: TextStyle(
                    color: Hexcolor('#5C6178'), fontFamily: 'Poppins'),
              ),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.fastfood, color: Hexcolor('#5C6178')),
              title: new Text(
                'Restaurants',
                style: TextStyle(
                    color: Hexcolor('#5C6178'), fontFamily: 'Poppins'),
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
