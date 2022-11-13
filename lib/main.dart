import 'package:flutter/material.dart';
import 'package:ros_app/homepage.dart';
import 'package:ros_app/controller_page.dart';

void main() {
  runApp(RosApp());
}

class RosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        '/controller': (context) => Control(),
      },
    );
  }
}
