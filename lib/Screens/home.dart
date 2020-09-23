import 'package:flutter/material.dart';
import 'package:margarita_hunt_clone/Themes/Themes.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Center(child: Text('Home')),
      ),
    );
  }
}
