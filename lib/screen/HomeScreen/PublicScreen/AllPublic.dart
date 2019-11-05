import 'package:flutter/material.dart';
import 'package:info_me/screen/HomeScreen/PublicScreen/DetailScreen.dart';

class AllPublicScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PublicScreen();
}

class PublicScreen extends State<AllPublicScreen> {
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
        title: Text('Public University',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailUniversityScreen('Royal University of Phnom Penh'))),
              child: _boxuniversity(
                  'RoyalUniversityofPhnomPenh', 'Royal University of Phnom Penh'),
            ),
            _boxuniversity('RoyalUniversityofAgriculture',
                'Royal University of Agriculture'),
            _boxuniversity('NationalPolytechnicInstituteofCambodia',
                'National Polytechnic Institute of Cambodia'),
            _boxuniversity('InstituteofTechnologyofCambodia',
                'Institute of Technolog of Cambodia'),
            _boxuniversity('NationalUniversityofManagement',
                'National University of Management'),
            _boxuniversity('SvayRiengUniversity', 'Svay Rieng University'),
            _boxuniversity('RoyalUniversityofLawandEconomics',
                'Royal University of Law and Economics'),
            _boxuniversity('PrekLeapNationalCollegeofAgriculture',
                'Prek Leap National College of Agriculture'),
            _boxuniversity('UniversitedesSciencesdelaSante',
                'Université des Sciences de la Santé'),
            _boxuniversity(
                'UniversityofBattambang', 'University of Battambang'),
            _boxuniversity(
                'RoyalUniversityofFineArts', 'Royal University of Fine Arts'),
            _boxuniversity('MeanCheyUniversity', 'Mean Chey University'),
            _boxuniversity('CheaSimUniversityofKamchaymear',
                'Chea Sim University of Kamchaymear'),
            _boxuniversity(
                'RoyalAcademyofCambodia', 'Royal Academy of Cambodia'),
            _boxuniversity('EconomicsandFinanceInstitute',
                'Economics and Finance Institute'),
            _boxuniversity('NationalInstituteofEducation',
                'National Institute of Education'),
            _boxuniversity('NationalInstituteofBusiness',
                'National Institute of Business'),
            _boxuniversity(
                'EcoleRoyaledAdministration', 'École Royale d’Administration'),
            _boxuniversity('PreahSihanoukRajaBuddhistUniversity',
                'Preah Sihanouk Raja Buddhist University'),
            _boxuniversity('KampongChamNationalSchoolofAgriculture',
                'Kampong Cham National School of Agriculture'),
            _boxuniversity(
                'NationalInstituteofPostsTelecommunicationsandnformationCommunicationTechnology',
                'National Institute of Posts, Telecommunications and Information Communication Technology'),
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
                child: Image.asset('images/items/' + nameuniversity + '.png'),
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
