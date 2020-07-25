import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Packages extends StatefulWidget {
  @override
  _PackagesState createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  int _cur = 0;
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

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;

    Widget _getBtm(int code) {
      return Container(
        height: 5,
        width: _mediaQuery.width * 0.02,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              _cur == code
                  ? BoxShadow(
                      color: Theme.of(context).accentColor,
                      spreadRadius: 1,
                      blurRadius: 1)
                  : BoxShadow()
            ]),
      );
    }

    Widget getSlide(String title, String desc, int num) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
//          Image.asset(
//            'assets/images/pck1.jpeg',
//            width: _mediaQuery.width * 0.38,
//          ),
            Container(
              width: _mediaQuery.width*0.15,
              height: _mediaQuery.width*0.15,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Theme.of(context).accentColor,spreadRadius: 1, blurRadius: 2)],
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.all(_mediaQuery.width*0.02),
              child: AutoSizeText(num.toString(),style: GoogleFonts.roboto(color: Theme.of(context).primaryColor, fontSize: 150, fontWeight: FontWeight.w900),),
            ),
          SizedBox(width: _mediaQuery.width*0.07,),
          FittedBox(
            child: Container(
              width: _mediaQuery.width * 0.38,
              height: _mediaQuery.height * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    title,
                    style: GoogleFonts.roboto(
                      color: Theme.of(context).accentColor,
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: _mediaQuery.height * 0.03,
                  ),
                  AutoSizeText(desc,
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400))
                ],
              ),
            ),
          )
        ],
      );
    }

    return Container(
      height: _mediaQuery.height * 0.8,
      color: Color(0xffDFECF1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "SERVICES",
            style: GoogleFonts.roboto(
                color: Theme.of(context).primaryColor,
                fontSize: 40,
                fontWeight: FontWeight.w900),
          ),
          CarouselSlider(
            options: CarouselOptions(
              autoPlayInterval: Duration(seconds: 15),
              height: _mediaQuery.height * 0.5,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              viewportFraction: 0.6,
              scrollPhysics: BouncingScrollPhysics(),
              autoPlay: true,
              onPageChanged: (val, _) {
                setState(() {
                  _cur = val;
                });
              },
            ),
            items: [0, 1, 2, 3].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return getSlide(_headList[i], _bodyList[i], i+1);
                },
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _getBtm(0),
              SizedBox(
                width: _mediaQuery.width * 0.02,
              ),
              _getBtm(1),
              SizedBox(
                width: _mediaQuery.width * 0.02,
              ),
              _getBtm(2),
              SizedBox(
                width: _mediaQuery.width * 0.02,
              ),
              _getBtm(3),
            ],
          )
        ],
      ),
    );
  }
}
