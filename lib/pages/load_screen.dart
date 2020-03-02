import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async{
    print('load data');
    Response response = await get('http://jsonplaceholder.typicode.com/todos/1');
    print(response.body);
    Map map = jsonDecode(response.body);
    print(map);
    print('title = '+map['title']);
  }

  void getTime() async
  {
    Response response = await get('http://worldtimeapi.org/api/timezone/Europe/London');
    Map data = jsonDecode(response.body);
    //print(data);
    //get propertise prom json data
    String dateTime = data['datetime'];
    String offSet = data['utc_offset'];
    print(dateTime);
    print(offSet);

    //create datetime object
    DateTime now = DateTime.parse(dateTime);
    DateTime newTime = now.add(Duration(hours: 2));
    print(newTime);

  }

  int counter = 0;
  @override
  void initState() {
    super.initState();
//    getData();
    getTime();
    print('init function run');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text('loading screen hih')),
    );
  }
}
