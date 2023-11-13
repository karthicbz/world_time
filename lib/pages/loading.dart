import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  // String time = 'Loading...';

  void setupWorldTime() async{
    WorldTime instance = WorldTime(
        location: 'Kolkata', flag: 'india', url: 'Asia/Kolkata');
    await instance.getData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getData();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text('Loading...'),
      ),
    );
  }
}
