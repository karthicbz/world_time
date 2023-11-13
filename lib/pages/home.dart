import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _State();
}

class _State extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {

    if(ModalRoute.of(context) != null){
      // var arguments = ModalRoute.of(context)!.settings.arguments;
      // if(arguments is Map<dynamic, dynamic>){
      //   data = arguments;
      //   print(data);
      // }
      data = ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>;
      // print(data);
    }

    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
        child: Column(
          children: [
            TextButton.icon(
                onPressed: (){
                  Navigator.pushNamed(context, "/location");
                },
                icon: Icon(Icons.edit_location),
                label: Text('Edit Location')),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(data['location'], style: TextStyle(fontSize: 28, letterSpacing: 2),)
              ],
            ),
            SizedBox(height: 20,),
            Text(data['time'], style: TextStyle(fontSize: 66),)
          ],
        ),
      )),
    );
  }
}
