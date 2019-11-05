import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:info_me/screen/HomeScreen/home.dart';
import 'package:info_me/screen/NewsScreen/news.dart';
import 'package:info_me/screen/ProfileScreen/menuprofile.dart';
import 'package:info_me/screen/TestsScreen/test.dart';

class ButtonNavigationBarOwner extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ButtomBar();
}

class ButtomBar extends State<ButtonNavigationBarOwner> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Theme(
            isMaterialAppTheme: true,
            data: ThemeData(brightness: Brightness.light),
            child: Scaffold(
                appBar: AppBar(
                  brightness: Brightness.light,
                  iconTheme: IconThemeData(color: Colors.white),
                  backgroundColor: Colors.white,
//                  elevation: 0.0,
                  centerTitle: false,
                  title: Text('INFO-ME',style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 25),),
                  actions: <Widget>[
                    IconButton(
                        icon: Image.asset('images/info-me.png'),
                        onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MenuProfileScreen())))
                  ],
                ),
                bottomNavigationBar: Container(
                  height: 70,
                    padding: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              offset: Offset(0, 0),
                              color: Colors.black12,
                              blurRadius: 6)
                        ]),
                    child: TabBar(
                        tabs: [
                          Tab(icon: Icon(Icons.widgets, size: 30)),
                          Tab(icon: Icon(Icons.assignment, size: 30)),
                          Tab(icon: Icon(Icons.public, size: 30))
                        ],
                        unselectedLabelColor: Colors.black12,
                        labelColor: Colors.teal,
                        indicatorColor: Colors.white,
//                            labelStyle: TextStyle(fontSize: 12),
                        indicatorWeight: 2)),
                body: TabBarView(children: [
                  HomeScreen(),
                  TestsScreen(),
                  NewsScreen(),
                ]))));
  }
}
