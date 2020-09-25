import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vestige/login.dart';
import 'package:vestige/restaurants/mcdonalds.dart';
import 'package:vestige/restaurants/pizzeria.dart';
import 'package:vestige/restaurants/tacobell.dart';

class Restaurant extends StatefulWidget {
  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  MapType _currentMapType = MapType.normal;
  BitmapDescriptor pinLocationIcon;
  Set<Marker> _markers = {};
  Completer<GoogleMapController> _controller = Completer();
  @override
  void initState() {
    super.initState();
    setCustomMapPin();
  }

  void setCustomMapPin() async {
    pinLocationIcon = await BitmapDescriptor.fromAsset('images/marker.bmp');
  }

  @override
  Widget build(BuildContext context) {
    LatLng pinPosition = LatLng(40.713050, -74.007230); //Taco Bell- NYC
    LatLng pinPosition1 =
        LatLng(40.5758222, -73.9800833224914); //Grimaldi's Pizzeria
    LatLng pinPosition2 = LatLng(40.6219444, -74.0225); //McDonald's

    String positionOne = "Taco Bell";
    String positionTwo = "Grimaldi's Pizzeria";
    String positionThree = "McDonald's";
    CameraPosition initialLocation =
        CameraPosition(zoom: 10, bearing: 30, target: pinPosition);

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image(
          image: AssetImage('images/game.png'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Welcome $name",
          style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/code.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  child: Container(
                    height: 300,
                    child: GoogleMap(
                      initialCameraPosition: initialLocation,
                      mapType: _currentMapType,
                      myLocationEnabled: true,
                      markers: _markers,
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                        setState(() {
                          _markers.add(Marker(
                              markerId: MarkerId("Target"),
                              position: pinPosition,
                              infoWindow: InfoWindow(
                                title: positionOne,
                                snippet: 'Restaurants',
                              ),
                              icon: pinLocationIcon));

                          _markers.add(Marker(
                              markerId: MarkerId("Grimaldi's Pizzeria"),
                              position: pinPosition1,
                              infoWindow: InfoWindow(
                                title: positionTwo,
                                snippet: 'Restaurants',
                              ),
                              icon: pinLocationIcon));

                          _markers.add(Marker(
                              markerId: MarkerId("McDonald's"),
                              position: pinPosition2,
                              infoWindow: InfoWindow(
                                title: positionThree,
                                snippet: 'Restaurants',
                              ),
                              icon: pinLocationIcon));
                        });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Restaurants near you",
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'Poppins', fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  child: Card(
                    color: Hexcolor('#FFE8F7'),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Image.network(
                                  'https://cdn.freelogovectors.net/wp-content/uploads/2014/05/Taco_Bell_Logo_2016.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      10.0, 10, 10, 5),
                                  child: Text(
                                    "Taco Bell",
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 17),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10.0, 10, 10, 5),
                                    child: Text(
                                      " 500 8th Ave, New York, NY 10018, United States",
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tacobell()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  child: Card(
                    color: Hexcolor('#F2ECFF'),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/en/c/c7/Grimaldi%27s_Logo.jpg'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      10.0, 10, 10, 5),
                                  child: Text(
                                    "Grimaldi's Pizzeria",
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 17),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10.0, 10, 10, 5),
                                    child: Text(
                                      "656 6th Ave, New York, NY 10010, United States",
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pizzeria()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  child: Card(
                    color: Hexcolor('#C8FCEA'),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Image.network(
                                  'https://cdn.freelogovectors.net/wp-content/uploads/2018/04/mcdonalds-logo.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      10.0, 10, 10, 5),
                                  child: Text(
                                    "McDonald's",
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 17),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10.0, 10, 10, 5),
                                    child: Text(
                                      "490 8th Ave, New York, NY 10001, United States",
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Donalds()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
