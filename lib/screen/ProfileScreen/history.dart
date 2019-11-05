import 'package:flutter/material.dart';

class HistorysScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Historys();

}

class Historys extends State<HistorysScreen>{
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
          'Historys',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

}