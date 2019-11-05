import 'package:flutter/material.dart';

class ListUniversityPhnomPenhScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => University();
}

class University extends State<ListUniversityPhnomPenhScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.teal),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Phnom Penh',style: TextStyle(fontSize: 20,color: Colors.teal,fontWeight: FontWeight.bold),),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _boxuniversity(
                  'RoyalUniversityofPhnomPenh', 'Royal University of Phnom Penh'),
            _boxuniversity('RoyalUniversityofAgriculture',
                'Royal University of Agriculture'),
            _boxuniversity('NationalPolytechnicInstituteofCambodia',
                'National Polytechnic Institute of Cambodia'),
            _boxuniversity('InstituteofTechnologyofCambodia',
                'Institute of Technolog of Cambodia'),
            _boxuniversity('NationalUniversityofManagement',
                'National University of Management'),
            _boxuniversity('RoyalUniversityofLawandEconomics',
                'Royal University of Law and Economics'),
            _boxuniversity('PrekLeapNationalCollegeofAgriculture',
                'Prek Leap National College of Agriculture'),
            _boxuniversity('UniversitedesSciencesdelaSante',
                'Université des Sciences de la Santé'),
            _boxuniversity(
                'RoyalUniversityofFineArts', 'Royal University of Fine Arts'),
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
            _boxuniversity(
                'NationalInstituteofPostsTelecommunicationsandnformationCommunicationTechnology',
                'National Institute of Posts, Telecommunications and Information Communication Technology'),
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
            _boxuniversity('PhnomPenhInternationalUniversity',
                'Phnom Penh International University'),
            _boxuniversity('CambodiaUniversityForSpecialties',
                'Cambodia University For Specialties'),
            _boxuniversity(
                'IICUniversityofTechnology', 'IIC University of Technology'),
            _boxuniversity('ChamroeunUniversityofPolytechnology',
                'Chamroeun University of Polytechnology'),
            _boxuniversity(
                'HumanResourcesUniversity', 'Human Resources University'),
            _boxuniversity('PanhaChietUniversity', 'Panha Chiet University'),
            _boxuniversity('KhemarakUniversity', 'Khemarak University'),
            _boxuniversity('ChenlaUniversity', 'Chenla University'),
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
