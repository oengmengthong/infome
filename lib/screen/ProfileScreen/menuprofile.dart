import 'package:flutter/material.dart';
import 'package:info_me/screen/ProfileScreen/aboutus.dart';
import 'package:info_me/screen/ProfileScreen/contactus.dart';
import 'package:info_me/screen/ProfileScreen/helpandsupport.dart';
import 'package:info_me/screen/ProfileScreen/history.dart';
import 'package:info_me/screen/ProfileScreen/profile.dart';
import 'package:info_me/screen/ProfileScreen/setting.dart';
import 'package:info_me/screen/buttomnavigationbar.dart';
import 'package:info_me/screen/login.dart';

class MenuProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MenuProfile();
}

class MenuProfile extends State<MenuProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
//        elevation: 0.0,
      leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ButtonNavigationBarOwner()));
      }),
        title: Text(
          'PROFILE',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: <Widget>[
          _headerprofile('Mengthong Oeng'),
          GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen())),
              child: _subrow('viewprofile','View Profile')),
          GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HistorysScreen())),
              child: _subrow('historys','Historys')),
          GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsScreen())),
              child: _subrow('settings','Settings')),
          GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpandSupportScreen())),
              child: _subrow('support','Help \& Support')),
          GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutScreen())),
              child: _subrow('about','About Us')),
          GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUsScreen())),
              child: _subrow('contact','Contact US')),
          GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LogInScreen()));
              },
              child: _subrow('logout','Log Out')),
        ],
      ),
    );
  }

  Widget _headerprofile(String nameuser) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.transparent,
            child: Image.asset('images/profile.gif'),
          ),
          Text(nameuser,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
        ],
      ),
    );
  }

  Widget _subrow(String image, String name){
    return Column(
      children: <Widget>[
        Divider(height: 0,color: Colors.teal,),
        Container(
          height: 50,
          color: Colors.white,
          padding: EdgeInsets.only(left: 16,right: 16),
          child: Row(
            children: <Widget>[
              Image.asset('images/' + image + '.png',height: 30,),
              SizedBox(width: 10,),
              Text(name,style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
        Divider(height: 0,color: Colors.teal,),
      ],
    );
  }

}
