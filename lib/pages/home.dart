import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    print('home build screen');
    //receceive actual arguments that we sent from loading screen
    data = ModalRoute.of(context).settings.arguments;
    print(data);
    String bgImage = "day.jpg";
    Color bgColor = Colors.blue;
    if(data['isDaytime'] != null) {
      String bgImage = data['isDaytime'] ? 'day.jpg' : 'night.jpg';
      Color bgColor = data['isDaytime'] ? Colors.blue : Colors.blue[800];
    }

    return Scaffold(
     // backgroundColor: bgColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$bgImage'),
            fit: BoxFit.cover,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,120.0, 0, 0),
          child: SafeArea(
              child: Column(
                children: <Widget>[
                  FlatButton.icon(
                      onPressed: (){
                        Navigator.pushNamed(context, '/location');
                      },
                      icon: Icon(Icons.edit_location),
                      label: Text(
                          'Edit location',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      )),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        data['location'],
                        style: TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 50.0,
                    ),
                  )
                ],

              )),
        ),
      ),
    );
  }
}
