import 'package:flutter/material.dart';
import 'package:info_me/screen/HomeScreen/MajorsScreen/ADMINSTRATION.dart';
import 'package:info_me/screen/HomeScreen/MajorsScreen/AGRICULTURE.dart';
import 'package:info_me/screen/HomeScreen/MajorsScreen/ARCHITECTURE.dart';
import 'package:info_me/screen/HomeScreen/MajorsScreen/ARTANDMUSIC.dart';
import 'package:info_me/screen/HomeScreen/MajorsScreen/BUSINESS.dart';
import 'package:info_me/screen/HomeScreen/MajorsScreen/COMMUNICATION.dart';
import 'package:info_me/screen/HomeScreen/MajorsScreen/EDUCATION.dart';
import 'package:info_me/screen/HomeScreen/MajorsScreen/ENGINEERING.dart';
import 'package:info_me/screen/HomeScreen/MajorsScreen/INFORMATIONOFTECHNOLOGY.dart';
import 'package:info_me/screen/HomeScreen/MajorsScreen/LANGUAGE.dart';
import 'package:info_me/screen/HomeScreen/MajorsScreen/LAW.dart';
import 'package:info_me/screen/HomeScreen/MajorsScreen/MEDICINE.dart';
import 'package:info_me/screen/HomeScreen/MajorsScreen/TOURISM.dart';

class AllMajorsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MajorsScreen();
}

class MajorsScreen extends State<AllMajorsScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
//        elevation: 0.0,
        title: Text('Majors',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>INFORMATIONOFTECHNOLOGYScreen())),
              child: _boxuniversity(
                  'INFORMATIONOFTECHNOLOGY', 'INFORMATION OF TECHNOLOGY'),
            ),
            GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MEDICINEScreen())),
                child: _boxuniversity('MEDICINE', 'MEDICINE')),
            GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>TOURISMScreen())),
                child: _boxuniversity('TOURISM', 'TOURISM')),
            GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>AGRICULTUREScreen())),
                child: _boxuniversity('AGRICULTURE', 'AGRICULTURE')),
            GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LANGUAGEScreen())),
                child: _boxuniversity('LANGUAGE', 'LANGUAGE')),
            GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ADMINSTRATIONScreen())),
                child: _boxuniversity('ADMINSTRATION', 'ADMINSTRATION')),
            GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>COMMUNICATIONScreen())),
                child: _boxuniversity('COMMUNICATION', 'COMMUNICATION')),
            GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ARCHITECTUREScreen())),
                child: _boxuniversity('ARCHITECTURE', 'ARCHITECTURE')),
            GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>BUSINESSScreen())),
                child: _boxuniversity('BUSINESS', 'BUSINESS')),
            GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ENGINEERINGScreen())),
                child: _boxuniversity('ENGINEERING', 'ENGINEERING')),
            GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ARTANDMUSICScreen())),
                child: _boxuniversity('ARTANDMUSIC', 'ART AND MUSIC')),
            GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LAWScreen())),
                child: _boxuniversity('LAW', 'LAW')),
            GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>EDUCATIONScreen())),
                child: _boxuniversity('EDUCATION', 'EDUCATION')),
          ],
        ),
      ),
    );
  }

  Widget _boxuniversity(String nameuniversity, String titlenameuniversity) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
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
