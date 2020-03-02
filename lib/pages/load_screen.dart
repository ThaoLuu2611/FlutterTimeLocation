import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:localtime/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {
    print('load data');
    Response response =
        await get('http://jsonplaceholder.typicode.com/todos/1');
    print(response.body);
    Map map = jsonDecode(response.body);
    print(map);
    print('title = ' + map['title']);
  }

  void setWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Jakarta', flag: 'jakarta.png', url: 'Asia/Jakarta');
    await instance.getTime();

    //push home screen ontop of loading screen
    Navigator.pushNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });
   // Navigator.pushReplacementNamed(context, '/home');
  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
//    getData();
    // getTime();
    setWorldTime();
    print('init function run');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(50.0),
      child: Text('Loading'),
    ));
  }
}
