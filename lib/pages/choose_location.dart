import 'package:flutter/material.dart';

class Location extends StatefulWidget {

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Choose a Location"),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: Text("Choose your location"),
    );
  }
}
