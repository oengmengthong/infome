import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => About();
}

class About extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _info('School Name', 'Royal University of Phnom Penh (RUPP)'),
            _info('School Website', 'http://www.rupp.edu.kh/'),
            _info('Telephone Number', '\+855 23 882 716\, \+855 96 287 9722'),
            _info('Email Address', 'secretary@rupp.edu.kh'),
            _info('Street Address', 'Russian Federation Boulevard'),
            _info('District', 'Toul Kork'),
            _info('City', 'Phnom Penh'),
          ],
        ),
      ),
    ));
  }

  Widget _info(String title, String data) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87.withOpacity(0.5))),
          SizedBox(
            height: 10,
          ),
          Text(
            data,
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
