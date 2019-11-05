import 'package:flutter/material.dart';

class ContactUsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Contact();

}

class Contact extends State<ContactUsScreen>{
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
          'Contact US',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

}