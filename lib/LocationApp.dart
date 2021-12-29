import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';


class LocationApp extends StatefulWidget {


  @override
  _LocationAppState createState() => _LocationAppState();
}

class _LocationAppState extends State<LocationApp> {
  var locationMessage = "";
  void getCurrentLocation() async{
    var position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    var lastPosition = await Geolocator.getLastKnownPosition();
    print(lastPosition);

    setState(() {
      locationMessage = "$position.latitude,$position.longitude";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("location services"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.location_on,
              size: 46.0,
              color: Colors.blue,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Get user location",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          //Text("Position : $locationMessage"),
          FlatButton(
            onPressed: () {
              getCurrentLocation();
            },
            color: Colors.blue[800],
            child: Text(
              "Get current location",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
