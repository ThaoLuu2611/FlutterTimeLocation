import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{

  String location;
  String time;
  String flag;//url to access icon
  String url;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async
  {
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);
    //print(data);
    //get propertise prom json data
    String dateTime = data['datetime'];
    String offSet = data['utc_offset'];
    print(dateTime);
    print('offfset = '+offSet);

    //create datetime object
    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse('3')));
    print(now);
    time = now.toString();

  }


}