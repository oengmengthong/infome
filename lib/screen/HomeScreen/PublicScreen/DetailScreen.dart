import 'package:flutter/material.dart';
import 'package:info_me/screen/HomeScreen/PublicScreen/aboutscreen.dart';
import 'package:info_me/screen/HomeScreen/PublicScreen/informationscreen.dart';

class DetailUniversityScreen extends StatefulWidget {
  DetailUniversityScreen(nameUniversity);
  String nameUniversity = '';

  @override
  State<StatefulWidget> createState() => DetailUniversity(nameUniversity);
}

class DetailUniversity extends State<DetailUniversityScreen> {
  DetailUniversity(nameUniversity);
  String nameUniversity = '';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
//        elevation: 0.0,
        title: Text(''),
      ),
      body: Column(
        children: <Widget>[
          _logouniversity(),
          _tab(),
        ],
      ),
    );
  }

  Widget _logouniversity() {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Image.asset('images/items/RoyalUniversityofPhnomPenh.png',
                width: 120),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Royal University of Phnom Penh',
                  softWrap: true,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _tab() {
    return Expanded(
        flex: 5,
        child: Container(
          height: 50,
          child: DefaultTabController(
              length: 2,
              child: Column(children: <Widget>[
                Container(
                    height: 40,
                    margin: EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.teal),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        ),
                    child: TabBar(
                        isScrollable: false,
                        unselectedLabelColor: Colors.black,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(3, 3),
                                  blurRadius: 6)
                            ],
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(6)),
                        tabs: [
                          Tab(
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text('Information'))),
                          Tab(
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text('About')))
                        ])),
                Expanded(
                    child: TabBarView(
                        children: [InformationScreen(), AboutScreen()]))
              ])),
        ));
  }
}
