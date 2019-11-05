import 'package:flutter/material.dart';
import 'package:info_me/screen/HomeScreen/LocationScreen/AllLocationsScreen.dart';
import 'package:info_me/screen/HomeScreen/MajorsScreen/AllMajorsScreen.dart';
import 'package:info_me/screen/HomeScreen/PrivateScreen/AllPrivateScreen.dart';
import 'package:info_me/screen/HomeScreen/PublicScreen/AllPublic.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Home();
}

class Home extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _slidebar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllPublicScreen())),
                    child:
                        _subWidget('public@3x', 'Public University', 80, 80)),
                GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllPrivateScreen())),
                    child:
                        _subWidget('private@3x', 'Private University', 80, 80))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllLocationScreen())),
                    child: _subWidget('location@3x', 'Locations', 80, 80)),
                GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllMajorsScreen())),
                    child: _subWidget('subject@3x', 'Majors', 80, 80))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _subWidget(String imageName, String title, double heightimage,
          double widthimage) =>
      Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.5 - 24,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    offset: Offset(3, 3), color: Colors.black12, blurRadius: 10)
              ]),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/' + imageName + '.png',
                    height: heightimage, width: widthimage),
                Text(title,
                    style: TextStyle(
                        color: Color(0xFF384F71),
                        fontWeight: FontWeight.bold,
                        fontSize: 18))
              ]));

  Widget _slidebar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
          height: 200.0,
          width: MediaQuery.of(context).size.width * 1 - 32,
          child: Carousel(
            radius: Radius.circular(10),
            images: [
              ExactAssetImage('images/coverschool/28.jpg'),
              ExactAssetImage('images/coverschool/37.jpg'),
              ExactAssetImage('images/coverschool/13.jpg'),
              ExactAssetImage('images/coverschool/14.jpg'),
              ExactAssetImage('images/coverschool/31.jpg'),
              ExactAssetImage('images/coverschool/16.jpg'),
              ExactAssetImage('images/coverschool/42.jpg'),
              ExactAssetImage('images/coverschool/22.jpg'),
              ExactAssetImage('images/coverschool/29.jpg'),
              ExactAssetImage('images/coverschool/21.jpg'),
            ],
            animationCurve: Curves.decelerate,
            dotSize: 4.0,
            dotSpacing: 15.0,
            dotIncreasedColor: Colors.white,
            dotColor: Colors.white.withOpacity(0.4),
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.black.withOpacity(0.3),
            borderRadius: true,
          )),
    );
  }
}
