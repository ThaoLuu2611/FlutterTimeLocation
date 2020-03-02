import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    //receceive actual arguments that we sent from loading screen
    data = ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0,120.0, 0, 0),
        child: SafeArea(
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                    onPressed: (){
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(Icons.edit_location),
                    label: Text('Edit location')),
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
    );
  }
}
