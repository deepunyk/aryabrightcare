import 'package:aryabrightcare/widgets/mobile/mobile_footer.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileServicesScreen extends StatefulWidget {

  static const routeName = '/mobileService';

  @override
  _MobileServicesScreenState createState() => _MobileServicesScreenState();
}

class _MobileServicesScreenState extends State<MobileServicesScreen> {
  List<String> _headList = [
    'Home Quarantine',
    'Apartment/community managed CCC\'s',
    'Hotels as CCC\'s',
    'Hospital Management Takeover'
  ];
  List<String> _bodyList = [
    'Arya Brightcare brings about innovative methods to manage asymptomatic and mild COVID-19 positive patients through virtual consultation of doctors, nurses, dieticians, yoga teachers and psychologists.\n\nArya Brightcare doctors have taken their time and effort to come up with a comprehensive management protocol in line with the Government of Karnataka issued management protocol to manage COVID-19 patients at the convinience of their home.\n\nArya BrightCare also provides most affordable self care comprehensive medical kit at consumer’s doorsteps, to help them monitor themselves regularly through the corona pandemic period.',
    'Arya BrightCare assists Residents welfare associations/ apartment associations to establish COVID Care Centres (CCCs) at their premises ( currently in Bangalore).\n\nArya BrightCare has 200+ empaneled doctors & nurses ready to be deployed at the covid care centres. Arya BrightCare doctors & nurses will monitor patients round the clock at the CCCs and any seriously ill patient will soon be shifted to COVID dedicated higher centres that are tied up with Arya BrightCare.\n\n All the medical care and diet plans for patients will be according to the Government issued protocol.',
    'Arya BrightCare partners with the premium hotels that are modified as COVID isolation centres (currently in and around Bengaluru).\n\nArya BrightCare also assists in providing the technical knowledge and know how to convert hotel rooms into quarantine centres with minimal cost & maximum efficiency.\n\nCOVID positive patients who are unable to stay at home quarantine due to personal reasons and if not happy to move to government maintained CCCs can choose to be isolated at hotels, charges of which will be borne by the patients. Arya BrightCare provides medical care to hotel quarantined patients at such hotels that are converted to CCCs. Arya BrightCare looks forward for such collaborations with interested hoteliers.',
    'Arya BrightCare takes over management of hospitals (currently only in Bangalore) that exclusively deals with COVID positive patients.\n\nDedicated COVID hospitals are directed by the government to admit only moderate and severe COVID positive cases, this is where Arya BrightCare assists hospitals to manage such patients.\n\nThe team has an empaneled, motivated team of doctors and nurses who have significant experience working in ICUs of COVID dedicated hospitals. Overall management of the hospitals can be handed over to Arya BrightCare and such an opportunity to provide service from Arya BrightCare will be honoured. It would be considered the duty of Arya BrightCare to upgrade the reputation of such hospitals.',
  ];

  List<String> _imgList = [
    'assets/images/services/home.jpg',
    'assets/images/services/apartment.jpg',
    'assets/images/services/hotel.jpg',
    'assets/images/services/hospital.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;

    Widget _getService(String title, String desc, String img){
      return Card(
        elevation: 10,
        margin: EdgeInsets.only(top: _mediaQuery.height*0.05, left: _mediaQuery.width*0.05, right: _mediaQuery.width*0.05, bottom: _mediaQuery.height*0.02),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(img, width: double.infinity,height: _mediaQuery.height*0.3,fit: BoxFit.cover,),
              SizedBox(height: _mediaQuery.height*0.02,),
              Container(
                height: _mediaQuery.height*0.6,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: _mediaQuery.width*0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      title,
                      style: GoogleFonts.roboto(
                        color: Theme.of(context).accentColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: _mediaQuery.height * 0.02,
                    ),
                    AutoSizeText(
                      desc,
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: _mediaQuery.height * 0.02,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffDFECF1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        elevation: 5,
        title: Container(
          height: _mediaQuery.height*0.07,
          padding: EdgeInsets.symmetric(vertical: _mediaQuery.height*0.008),
          child: Image.asset(
            'assets/images/main_logo.png',
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: _mediaQuery.height*0.05,),
          Text(
            "SERVICES",
            style: GoogleFonts.roboto(
                color: Theme.of(context).primaryColor,
                fontSize: 30,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
          _getService(_headList[0], _bodyList[0], _imgList[0]),
          _getService(_headList[1], _bodyList[1], _imgList[1]),
          _getService(_headList[2], _bodyList[2], _imgList[2]),
          _getService(_headList[3], _bodyList[3], _imgList[3]),
          SizedBox(height: _mediaQuery.height*0.05,),
          MobileFooter(),
        ],
      ),
    );
  }
}