import 'package:flutter/material.dart';
import 'package:localtime/pages/home.dart';
import 'package:localtime/pages/load_screen.dart';
import 'package:localtime/pages/location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => Location(),
  },
    ));
