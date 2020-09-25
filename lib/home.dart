import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vestige/login.dart';
import 'package:vestige/supermarket/seven.dart';
import 'package:vestige/supermarket/target.dart';
import 'package:vestige/supermarket/walmart.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    LatLng pinPosition = LatLng(40.749790, -73.989030); //Target
    LatLng pinPosition1 = LatLng(40.744830, -73.997520); //7-Eleven
    LatLng pinPosition2 = LatLng(40.660960, -73.726570); //Walmart

    String positionOne = "Target";
    String positionTwo = "7-Eleven";
    String positionThree = "Walmart Supercenter";
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
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              onPressed: () {
                signOutGoogle();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return Login();
                }), ModalRoute.withName('/'));
              }),
        ],
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
                                snippet: 'Supermarker and Groceries',
                              ),
                              icon: pinLocationIcon));

                          _markers.add(Marker(
                              markerId: MarkerId("7-Eleven"),
                              position: pinPosition1,
                              infoWindow: InfoWindow(
                                title: positionTwo,
                                snippet: 'Supermarker and Groceries',
                              ),
                              icon: pinLocationIcon));

                          _markers.add(Marker(
                              markerId: MarkerId("Walmart Supercenter"),
                              position: pinPosition2,
                              infoWindow: InfoWindow(
                                title: positionThree,
                                snippet: 'Supermarker and Groceries',
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
                  "Supermarkets near you",
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
                                  'https://cdn.freelogovectors.net/wp-content/uploads/2019/10/target-logo.png'),
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
                                    "Target",
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
                                      "112 W 34th St, New York, NY 10120, United States",
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
                      MaterialPageRoute(builder: (context) => Target()),
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
                                  'https://cdn.freelogovectors.net/wp-content/uploads/2018/04/7-ElevenLogo.png'),
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
                                    "7-Eleven",
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
                                      "246 W 23rd St, New York, NY 10011, United States",
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
                      MaterialPageRoute(builder: (context) => Seven()),
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
                                  'https://cdn.freelogovectors.net/wp-content/uploads/2020/01/walmart-logo.png'),
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
                                    "Walmart Supercenter",
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
                                      "77 Green Acres Rd S, NY 11581, United States",
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
                      MaterialPageRoute(builder: (context) => Walmart()),
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
