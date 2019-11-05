import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => About();
}

class About extends State<AboutScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
//        elevation: 0.0,
        title: Text(
          'About Us',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

}