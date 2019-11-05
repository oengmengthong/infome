import 'package:flutter/material.dart';
import 'package:info_me/screen/HomeScreen/LocationScreen/universitybanteaymeanchey.dart';
import 'package:info_me/screen/HomeScreen/LocationScreen/universitybattambang.dart';
import 'package:info_me/screen/HomeScreen/LocationScreen/universitykompongcham.dart';
import 'package:info_me/screen/HomeScreen/LocationScreen/universitykompot.dart';
import 'package:info_me/screen/HomeScreen/LocationScreen/universityphnompenh.dart';
import 'package:info_me/screen/HomeScreen/LocationScreen/universitypreyveng.dart';
import 'package:info_me/screen/HomeScreen/LocationScreen/universitysiemreap.dart';
import 'package:info_me/screen/HomeScreen/LocationScreen/universitysihanoukville.dart';
import 'package:info_me/screen/HomeScreen/LocationScreen/universitysvayrieng.dart';

class AllLocationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LocationScreen();
}

class LocationScreen extends State<AllLocationScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.teal),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Locations',style: TextStyle(fontSize: 20,color: Colors.teal,fontWeight: FontWeight.bold),),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GestureDetector(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ListUniversityBattambangScreen())),
                child: _boxuniversity('Battambang', 'Battambang')),
            GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ListUniversityPreyVengScreen())),
                child: _boxuniversity('PreyVeng', 'Prey Veng')),
            GestureDetector(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ListUniversityKampongChamScreen())),
                child: _boxuniversity('KampongCham', 'Kampong Cham')),
            GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ListUniversityKompotScreen())),
                child: _boxuniversity('Kampot', 'Kampot')),
            GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ListUniversityPhnomPenhScreen())),
                child: _boxuniversity('PhnomPenh', 'Phnom Penh')),
            GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ListUniversitySiemReapScreen())),
                child: _boxuniversity('SiemReap', 'Siem Reap')),
            GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ListUniversitySihanoukvilleScreen())),
                child: _boxuniversity('Sihanoukville', 'Sihanoukville')),
            GestureDetector(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ListUniversityBanteayMeancheyScreen())),
                child: _boxuniversity('BanteayMeanchey', 'Banteay Meanchey')),
            GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ListUniversitySvayRiengScreen())),
                child: _boxuniversity('SvayRieng', 'Svay Rieng')),
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
                  fit: BoxFit.fitHeight,
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
