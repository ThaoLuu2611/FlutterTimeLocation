import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  void getUser() async{

      String user = await Future.delayed(Duration(seconds: 3),(){
        return 'Thao';
      });

      String country = await Future.delayed(Duration(seconds: 2),(){
        return 'Viet Nam';
      });
      print('$user = $country');

  }

  int counter = 0;
  @override
  void initState() {
    super.initState();
    getUser();
    print('init function run');
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
