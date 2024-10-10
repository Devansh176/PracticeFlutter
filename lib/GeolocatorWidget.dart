import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  Position? position;

  fetchPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    String latitude;
    String longitude;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
      Fluttertoast.showToast(
        msg: "Location services disabled",
        timeInSecForIosWeb: 3,
      );
    }
    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied){
        Fluttertoast.showToast(msg: "You denied the permission");
      }
    }
    if(permission == LocationPermission.deniedForever){
      Fluttertoast.showToast(msg: "You denied the permission forever");
    }
    Position currentPosition = await Geolocator.getCurrentPosition();
    setState(() {
      position = currentPosition;
      latitude = currentPosition.latitude.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final height = screenSize.height;
    final width = screenSize.width;
    final padding = width * 0.05;
    final fontSize = width * 0.05;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Geolocator Widget',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: fontSize * 1.7,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(position == null ? 'Location' : position.toString(),
              style: TextStyle(
                color: Colors.lightGreen,
                fontSize: fontSize * 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                fetchPosition();
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.transparent),
                side: WidgetStateProperty.all(const BorderSide(color: Colors.green),
                ),
              ),
              child: Text('Get Location',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: fontSize,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
