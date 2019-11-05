import 'package:flutter/material.dart';
import 'package:info_me/screen/HomeScreen/PublicScreen/DetailPrice.dart';

class InformationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Information();
}

class Information extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
      children: <Widget>[_overview(), _list_all_departments()],
    ),
        ));
  }

  Widget _overview() {
    String overview =
        'Established since 1960, RUPP is considered the oldest public university in Phnom Penh which locates along Russian Federation Boulevard. It was originally the Royal Khmer University; the name got changed several times until it stopped at the Royal University of Phnom Penh in 1996.';

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Overview',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black45),
          ),
          SizedBox(height: 5),
          Text(
            overview,
            softWrap: true,
          )
        ],
      ),
    );
  }

  Widget _list_all_departments() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'List of Department',
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              ),
              Text('Undergraduate Degrees',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        GestureDetector(
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPriceScreen())),
            child: _subrow('Biology')),
        _subrow('Chemistry'),
        _subrow('Computer Science'),
        _subrow('English, IFL'),
        _subrow('French, IFL'),
        _subrow('Geography & Land Management'),
        _subrow('History'),
        _subrow('Mathematics'),
        _subrow('Philosophy'),
        _subrow('Psychology'),
        _subrow('Sociology'),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Undergraduate Degrees',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        _subrow('Biology'),
        _subrow('Chemistry'),
        _subrow('Computer Science'),
        _subrow('English, IFL'),
        _subrow('French, IFL'),
        _subrow('Linguistics'),
        _subrow('Mathematics'),
        _subrow('Sociology'),
      ],
    );
  }

  Widget _subrow(String name){
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
                  Text('View',style: TextStyle(fontSize: 17,color: Colors.black87),),
                  Icon(Icons.arrow_forward_ios,color: Colors.black87),
                ],
              ),
            ],
          ),
        ),
        Divider(height: 0,),
      ],
    );
  }

}
