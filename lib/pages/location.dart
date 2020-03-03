import 'package:flutter/material.dart';
import 'package:localtime/services/world_time.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  List<WorldTime> locations = [
    WorldTime(
        location: 'Jakarta', flag: 'jakarta.png', url: 'Asia/Ho_Chi_Minh'),
    WorldTime(location: 'Jakarta', flag: 'jakarta.png', url: 'Asia/Seoul'),
    WorldTime(
        location: 'Barbados', flag: 'jakarta.png', url: 'America/Barbados'),
    WorldTime(location: 'Cairo', flag: 'jakarta.png', url: 'Africa/Cairo'),
    WorldTime(location: 'Jakarta', flag: 'jakarta.png', url: 'Asia/Jakarta'),
    WorldTime(location: 'Seoul', flag: 'jakarta.png', url: 'Asia/Seoul'),
  ];

  @override
  Widget build(BuildContext context) {
    WorldTime(url: '');
    print('location build function run');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose location'),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              child: Card(
                child: ListTile(
                  onTap: () {

                    print(locations[index].location);

                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/day.jpg'),
                    radius: 20.0,
                  ),
                ),
              ),
            );
          }
      ),
    );

  }
}
