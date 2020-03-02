import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {


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
          //  counter +=1;
          });
        },
        child: Text('counter is '),
      ),
    );
  }
}
