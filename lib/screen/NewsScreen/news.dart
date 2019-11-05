import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => News();
}

class News extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                _boxnew(
                    'Vector Institute Scholarships 2019-20 in Canada',
                    '01 Apr 2019 ',
                    'The Vector Scholarships in Artificial Intelligence are merit-based awards that recognize top candidates pursuing AI-related studies in master’s programs'),
                _boxnew(
                    'Vector Institute Scholarships 2019-20 in Canada',
                    '01 Apr 2019 ',
                    'The Vector Scholarships in Artificial Intelligence are merit-based awards that recognize top candidates pursuing AI-related studies in master’s programs'),
                _boxnew(
                    'Vector Institute Scholarships 2019-20 in Canada',
                    '01 Apr 2019 ',
                    'The Vector Scholarships in Artificial Intelligence are merit-based awards that recognize top candidates pursuing AI-related studies in master’s programs'),
                _boxnew(
                    'Vector Institute Scholarships 2019-20 in Canada',
                    '01 Apr 2019 ',
                    'The Vector Scholarships in Artificial Intelligence are merit-based awards that recognize top candidates pursuing AI-related studies in master’s programs'),
                _boxnew(
                    'Vector Institute Scholarships 2019-20 in Canada',
                    '01 Apr 2019 ',
                    'The Vector Scholarships in Artificial Intelligence are merit-based awards that recognize top candidates pursuing AI-related studies in master’s programs'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _boxnew(String titlenew, String datepost, String description) {
    return Container(
      height: 130,
      padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
      margin: EdgeInsets.only(top: 5,bottom: 5,left: 16,right: 16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10),
          boxShadow: <BoxShadow>[
            BoxShadow(
                offset: Offset(0, 3), color: Colors.black12, blurRadius: 6)
          ]
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  titlenew,
                  softWrap: true,
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[Text(datepost)],
              )
            ],
          ),
          Text(
            description,
            softWrap: true,
          )
        ],
      ),
    );
  }
}
