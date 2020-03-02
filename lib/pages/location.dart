import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  void getData(){
    //simulate a network request for user name
    Future.delayed(Duration(seconds: 4),(){
      print('Viet Nam');
    });

    //similate network request to get bio of username
    Future.delayed(Duration(seconds: 2),(){
      print('Ha Noi');
    });

    print('statement');
  }
  int counter = 0;
  @override
  void initState() {
    super.initState();
    print('init function run');
    getData();
  }
  @override
  Widget build(BuildContext context) {
    print('build function run');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose location'),
        elevation: 0,
        centerTitle: true,
      ),
      body: RaisedButton(
        onPressed: (){
          setState(() {
            counter +=1;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }
}
