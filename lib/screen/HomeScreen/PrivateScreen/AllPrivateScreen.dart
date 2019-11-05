import 'package:flutter/material.dart';

class AllPrivateScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PrivateScreen();
}

class PrivateScreen extends State<AllPrivateScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
        title: Text('Private University',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _boxuniversity(
                'TheUniversityofCambodia', 'The University of Cambodia'),
            _boxuniversity('PannasastraUniversityofCambodia',
                'Paññasastra University of Cambodia'),
            _boxuniversity('ZamanUniversity', 'Zaman University'),
            _boxuniversity(
                'WesternUniversityCambodia', 'Western University Cambodia'),
            _boxuniversity(
                'UniversityofPuthisastra', 'University of Puthisastra'),
            _boxuniversity(
                'CambodianMekongUniversity', 'Cambodian Mekong University'),
            _boxuniversity('NortonUniversity', 'Norton University'),
            _boxuniversity('BuildBrightUniversity', 'Build Bright University'),
            _boxuniversity('AsiaEuroUniversity', 'Asia Euro University'),
            _boxuniversity(
                'InternationalUniversity', 'International University'),
            _boxuniversity('AmericanUniversityofPhnomPenh',
                'American University of Phnom Penh'),
            _boxuniversity('VandaInstitute', 'Vanda Institute'),
            _boxuniversity('CamEdBusinessSchool', 'CamEd Business School'),
            _boxuniversity('UniversityofManagementandEconomics',
                'University of Management and Economics'),

            _boxuniversity('PhnomPenhInternationalUniversity',
                'Phnom Penh International University'),
            _boxuniversity('CambodiaUniversityForSpecialties',
                'Cambodia University For Specialties'),
            _boxuniversity(
                'IICUniversityofTechnology', 'IIC University of Technology'),

            _boxuniversity('ChamroeunUniversityofPolytechnology',
                'Chamroeun University of Polytechnology'),
            _boxuniversity(
                'LifeUniversityCambodia', 'Life University Cambodia'),
            _boxuniversity(
                'HumanResourcesUniversity', 'Human Resources University'),
            _boxuniversity('PanhaChietUniversity', 'Panha Chiet University'),
            _boxuniversity('DeweyInternationalUniversity',
                'Dewey International University'),
            _boxuniversity('KhemarakUniversity', 'Khemarak University'),
            _boxuniversity('ChenlaUniversity', 'Chenla University'),
            _boxuniversity('KhmerUniversityofTechnologyandManagement',
                'Khmer University of Technology and Management'),
            _boxuniversity('PhnomPenhInstituteofTechnology',
                'Phnom Penh Institute of Technology'),
            _boxuniversity(
                'AngkorKhemaraUniversity', 'Angkor Khemara University'),
            _boxuniversity('LimkokwingUniversityofCreativeTechnologyCambodia',
                'Limkokwing University of Creative Technology Cambodia'),
            _boxuniversity('BelteiInternationalUniversity',
                'Beltei International University'),
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
