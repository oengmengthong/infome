import 'package:flutter/material.dart';

class HelpandSupportScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HelpandSupport();

}

class HelpandSupport extends State<HelpandSupportScreen>{
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
          'Help & Support',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

}