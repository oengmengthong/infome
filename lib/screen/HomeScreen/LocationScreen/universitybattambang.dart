import 'package:flutter/material.dart';

class ListUniversityBattambangScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => University();
}

class University extends State<ListUniversityBattambangScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.teal),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Battambang',style: TextStyle(fontSize: 20,color: Colors.teal,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _boxuniversity(
                'UniversityofBattambang', 'University of Battambang'),
            _boxuniversity('UniversityofManagementandEconomics',
                'University of Management and Economics'),
            _boxuniversity('DeweyInternationalUniversity',
                'Dewey International University'),
          ],
        ),
      ),
    );
  }

  Widget _boxuniversity(String nameuniversity, String titlenameuniversity) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 16),
                padding: EdgeInsets.all(8),
                height: 130,
                width: MediaQuery.of(context).size.width * 0.3,
                child: Image.asset(
                  'images/items/' + nameuniversity + '.png',
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16, left: 16),
                width: MediaQuery.of(context).size.width * 0.7 - 48,
                padding: EdgeInsets.all(0),
                child: Text(titlenameuniversity, softWrap: true),
              )
            ],
          ),
          Divider(
            color: Colors.teal,
          ),
        ],
      ),
    );
  }
}
