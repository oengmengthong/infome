import 'package:flutter/material.dart';

class DetailPriceScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>DetailPrice();
}

class DetailPrice extends State<DetailPriceScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
//        elevation: 0.0,
        title: Text('Biology',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
//            _logouniversity(),
          SizedBox(height: 10),
            _subrow('Bachelor of Science in Biology','300'),
          ],
        ),
      ),
    );
  }

  Widget _logouniversity() {
    return Padding(
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
    );
  }

  Widget _subrow(String name,String price){
    return Column(
      children: <Widget>[
        Divider(height: 0,),
        Container(
          height: 50,
          color: Colors.white,
          padding: EdgeInsets.only(left: 16,right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(name,style: TextStyle(fontSize: 17),),
                  Spacer(),
                  Text('Detail',style: TextStyle(fontSize: 17,color: Colors.black87),),
                ],
              ),
            ],
          ),
        ),
        Divider(height: 0),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Tuition Fee per Year'),
                  Text('Time Study'),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text('\$ '+price),
                  Text('Morning'),
                  Text('Afternoon'),
                  Text('Evening'),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

}