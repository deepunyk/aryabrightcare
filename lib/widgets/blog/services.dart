import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ServicesBar extends StatelessWidget {
  List<String> _serviceName = [
    "ICU care at home",
    "Doctor consultation",
    "Caregivers",
    "Physiotherapy",
    "Speech and language therapy",
    "Lab test",
    "Medical equipment",
    "Stroke rehabilitation",
    "Respiratory care"
  ];

  List<String> _serviceImg = [
    'assets/images/services/main/icu_care.jpg',
    'assets/images/services/main/doctor_consultation.jpg',
    'assets/images/services/main/care_givers.jpg',
    'assets/images/services/main/physiotherapy.jpg',
    'assets/images/services/main/speech.jpg',
    'assets/images/services/main/lab_test.jpg',
    'assets/images/services/main/medical_equipments.jpg',
    'assets/images/services/main/stroke.jpg',
    'assets/images/services/main/respiratory.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    Widget _getServiceCard(String title, String img) {
      return Container(
        height: 250,
        width: _mediaQuery.width*0.15,
        child: Card(
          elevation: 5,
          child: Stack(
            children: [
              Container(height: 250,
                  width: _mediaQuery.width*0.2,child: Image.asset(img,fit: BoxFit.cover,height: double.infinity,width: double.infinity,)),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80,
                  width: _mediaQuery.width*0.2,
                  color: Color(0x80006591),
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: AutoSizeText(
                    title,
                    style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Container(
      width: _mediaQuery.width*0.2,
      height: _mediaQuery.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text("Services",style: TextStyle(fontSize: 20,color: Theme.of(context).primaryColor,fontWeight: FontWeight.w700),),
          ),
          Container(
            height: _mediaQuery.height*0.9,
            child: ListView.builder(itemCount:_serviceImg.length,itemBuilder: (BuildContext context,int item){
              return _getServiceCard(_serviceName[item], _serviceImg[item]);
            }),
          )
        ],
      ),
    );
  }
}
