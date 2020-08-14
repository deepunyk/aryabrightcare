import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                          color: Theme.of(context).accentColor,
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
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(Icons.navigate_next, color: Theme.of(context).primaryColor,size: 20,)
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

    Widget _getServiceCard(String title) {
      return Card(
        margin: EdgeInsets.only(right: _mediaQuery.width * 0.05),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            title,
            style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
        ),
      );
    }

    return Column(
      children: [
        Container(
          color: Color(0xffDFECF1),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: _mediaQuery.height * 0.05,
              ),
              Text(
                "SERVICES",
                style: GoogleFonts.roboto(
                    color: Theme.of(context).primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: _mediaQuery.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "From health packages for the busy executive to trained nurses for post-surgery care, we offer all that you need for the happy and the tough times.",
                  style: GoogleFonts.roboto(color: Colors.black, fontSize: 16),textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: _mediaQuery.height * 0.03,
              ),
              Container(
                height: _mediaQuery.height * 0.1,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(
                      width: _mediaQuery.width * 0.1,
                    ),
                    _getServiceCard(_serviceName[0]),
                    _getServiceCard(_serviceName[1]),
                    _getServiceCard(_serviceName[2]),
                    _getServiceCard(_serviceName[3]),
                    _getServiceCard(_serviceName[4]),
                    _getServiceCard(_serviceName[5]),
                    _getServiceCard(_serviceName[6]),
                    _getServiceCard(_serviceName[7]),
                    _getServiceCard(_serviceName[8]),
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
          color: Theme.of(context).primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: _mediaQuery.height*0.05,),
              Text(
                "COVID CARE SERVICES",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w900),
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
            ],
          ),
        ),
      ],
    );
  }
}
