import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{

  String location;
  String time;
  String flag;//url to access icon
  String url;
  bool isDaytime;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async
  {
    try {
      Response response = await get(
          'http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      //print(data);
      //get propertise prom json data
      String dateTime = data['datetime'];
      String offSet = data['utc_offset'];
      print(dateTime);
      print('offfset = ' + offSet);

      //create datetime object
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse('3')));
      print(now);
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
    //  time = now.toString();
      time = DateFormat.jm().format(now);
    }
    catch(e){
      print('caught error : $e');
      time = 'cound not get time data';
    }

  }


}