import 'package:flutter/material.dart';

class TestsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Tests();
}

const menuItem = <String>[
  'Information of Technology',
  'Medicine',
  'Tourism',
  'Agriculture',
  'Languages',
  'Adminstration',
  'Communication',
  'Architecture',
  'Business',
  'Engineering',
  'Art and Music',
  'Law',
  'Education'
];

final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItem
    .map(
      (String value) => DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      ),
    )
    .toList();

class Tests extends State<TestsScreen> {
  String _btn2SelectedVal;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Select major for take a test.',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.only(left: 32, right: 32, top: 5, bottom: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        offset: Offset(0, 3),
                        color: Colors.black12,
                        blurRadius: 6)
                  ]),
              child: DropdownButton<String>(
                isExpanded: true,
                value: _btn2SelectedVal,
                iconSize: 40,
                hint: Text('Select major'),
                onChanged: ((String newValue) {
                  setState(() {
                    _btn2SelectedVal = newValue;
                  });
                }),
                items: _dropDownMenuItems,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                _buttonStart(),
              ],
            ),
            Spacer(),
            Text('History of TEST:', style: TextStyle(fontSize: 17)),
            SizedBox(height: 16),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              padding: EdgeInsets.all(32),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        offset: Offset(0, 3),
                        color: Colors.black12,
                        blurRadius: 6)
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _historytestsubject('Computer Science'),
                  _historytestsubject('Civil Engineering'),
                  _historytestsubject('Mathematical'),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'View More',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _historytestsubject(String title) {
    return Column(
      children: <Widget>[
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(title),
            GestureDetector(
              onTap: () {},
              child: Text(
                'View',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        SizedBox(height: 5),
        Divider(),
      ],
    );
  }

  Widget _buttonStart() {
    return Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 3), color: Colors.black12, blurRadius: 6)
            ]),
        child: RaisedButton(
            color: Colors.teal,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: () {},
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('START  TEST',
                      style: TextStyle(fontSize: 17, color: Colors.white))
                ])));
  }
}
