import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';

class MobileServices extends StatefulWidget {

  final Function update;

  MobileServices(this.update);

  @override
  _MobileServicesState createState() => _MobileServicesState();
}

class _MobileServicesState extends State<MobileServices> {

  int _cur = 0;

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

  List<String> _headList = [
    'Home Quarantine',
    'Apartment/community managed CCCs',
    'Hotels as CCCs',
    'Hospital Management Takeover'
  ];

  List<String> _bodyList = [
    'Arya Brightcare brings about innovative methods to manage asymptomatic and mild COVID-19 positive patients through virtual consultation of doctors, nurses, dieticians, yoga teachers and psychologists.',
    'Arya BrightCare assists Residents welfare associations/ apartment associations to establish COVID Care Centres (CCCs) at their premises ( currently in Bangalore).',
    'Arya BrightCare partners with the premium hotels that are modified as COVID isolation centres (currently in and around Bengaluru).',
    'Arya BrightCare takes over management of hospitals (currently only in Bangalore) that exclusively deals with COVID positive patients.',
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

    Widget _getSlide(String title, String desc, int num, String img) {
      return Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          height: _mediaQuery.height * 0.6,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Image.asset(
                img,
                width: double.infinity,
                height: _mediaQuery.height * 0.25,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: _mediaQuery.width * 0.04,
                      vertical: _mediaQuery.height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        title,
                        style: GoogleFonts.roboto(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: _mediaQuery.height * 0.01,
                      ),
                      AutoSizeText(
                        desc,
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: FlatButton(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "More Details",
                                  style: GoogleFonts.roboto(
                                      color: Theme.of(context).accentColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(Icons.navigate_next, color: Theme.of(context).accentColor,size: 15,)
                              ],
                            ),
                            onPressed: () {
                              widget.update(5);
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget _getServiceCard(String title, String img) {
      return Container(
        height: _mediaQuery.height*0.3,
        width: _mediaQuery.width*0.6,
        margin: EdgeInsets.only(right: 20),
        child: Card(
          elevation: 5,
          child: Stack(
            children: [
              Container(height: _mediaQuery.height*0.3,
                  width: _mediaQuery.width*0.6,child: Image.asset(img,fit: BoxFit.cover,height: double.infinity,width: double.infinity,)),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: _mediaQuery.height*0.1,
                  width: _mediaQuery.width*0.6,
                  color: Color(0x80006591),
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: AutoSizeText(
                    title,
                    style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }


    Widget _counter() {
      return Container(
        width: double.infinity,
        height: _mediaQuery.height * 0.15,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/landing/landing_two.jpg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Color(0x80006591),
            ),
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: _mediaQuery.width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        WebsafeSvg.asset('assets/icons/doctor.svg', color: Colors.white, height: _mediaQuery.width*0.08),
                        Container(
                          height: _mediaQuery.height*0.08,
                          width: 2,
                          color: Colors.white,
                          margin: EdgeInsets.symmetric(horizontal: _mediaQuery.width*0.02),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              "200+",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  shadows: [
                                    Shadow(
                                      color: Theme.of(context).primaryColor,
                                      blurRadius: 5,
                                    )
                                  ]),
                              maxLines: 1,
                            ),
                            AutoSizeText(
                              "Empanelled Doctors\nand Nurses",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 11),
                              maxLines: 2,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: _mediaQuery.width*0.1,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        WebsafeSvg.asset('assets/icons/patient.svg', color: Colors.white, height: _mediaQuery.width*0.08),
                        Container(
                          height: _mediaQuery.height*0.08,
                          width: 2,
                          color: Colors.white,
                          margin: EdgeInsets.symmetric(horizontal: _mediaQuery.width*0.02),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              "1000+",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  shadows: [
                                    Shadow(
                                      color: Theme.of(context).primaryColor,
                                      blurRadius: 5,
                                    )
                                  ]),
                              maxLines: 1,
                            ),
                            AutoSizeText(
                              "Patients\nTreated",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 11),
                              maxLines: 2,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        Container(
          color: Color(0xffF2FBFF),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: _mediaQuery.height * 0.05,
              ),
              Text(
                "Our Medical Services",
                style: GoogleFonts.roboto(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: _mediaQuery.height * 0.015,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "From health packages for the busy executive to trained nurses for post-surgery care, we offer all that you need for the happy and the tough times.",
                  style: GoogleFonts.roboto(color: Colors.black, fontSize: 16),textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: _mediaQuery.height * 0.02,
              ),
              Text(
                "Home Healthcare Services",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: _mediaQuery.height * 0.02,
              ),
              Container(
                height: _mediaQuery.height * 0.3,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(
                      width: _mediaQuery.width * 0.1,
                    ),
                    _getServiceCard(_serviceName[0],_serviceImg[0]),
                    _getServiceCard(_serviceName[1],_serviceImg[1]),
                    _getServiceCard(_serviceName[2],_serviceImg[2]),
                    _getServiceCard(_serviceName[3],_serviceImg[3]),
                    _getServiceCard(_serviceName[4],_serviceImg[4]),
                    _getServiceCard(_serviceName[5],_serviceImg[5]),
                    _getServiceCard(_serviceName[6],_serviceImg[6]),
                    _getServiceCard(_serviceName[7],_serviceImg[7]),
                    _getServiceCard(_serviceName[8],_serviceImg[8]),

                  ],
                ),
              ),
              SizedBox(
                height: _mediaQuery.height * 0.05,
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: _mediaQuery.height*0.05,),
              Text(
                "Covid Care Services",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: _mediaQuery.height*0.05,),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlayInterval: Duration(seconds: 5),
                  height: _mediaQuery.height * 0.6,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.84,
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
                      return _getSlide(
                          _headList[i], _bodyList[i], i + 1, _imgList[i]);
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: _mediaQuery.height*0.05,),
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
              ),
              SizedBox(height: _mediaQuery.height*0.05,),
              _counter(),
            ],
          ),
        ),
      ],
    );
  }
}
