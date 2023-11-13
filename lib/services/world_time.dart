import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  String? location;
  String? time;
  String? flag;
  String? url;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getData() async{
    try {
      Response response = await get(
          Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      String dateTime = data['datetime'];
      // String offset = data['utc_offset'].substring(1,3);

      DateTime now = DateTime.parse(dateTime).toLocal();
      // print(now);
      // time = now.toString();
      time = DateFormat.jm().format(now);
    }catch(e){
      print('caught error $e');
      time = 'Could not get time data';
    }
  }
}