import 'package:aryabrightcare/models/trap_clip.dart';
import 'package:aryabrightcare/models/trap_clip_two.dart';
import 'package:aryabrightcare/widgets/custom_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'nav_bar.dart';

class LandingPage extends StatefulWidget {
  final Function update;

  LandingPage(this.update);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  CarouselController _controller = CarouselController();
  int _cur = 0;

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;

    Widget _pageOne() {
      return Stack(
        children: [
          Image.asset(
            'assets/images/landing/landing_one.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          Container(height: double.infinity,width: double.infinity,color: Color(0x33ffffff),),
          Container(
            margin: EdgeInsets.only(left: _mediaQuery.width * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "WELCOME TO ARYA BRIGHTCARE",
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor,
                      letterSpacing: 1.2),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "We are here\nfor your care",
                  style: GoogleFonts.roboto(
                      fontSize: 70,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      height: 0.95),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 450,
                  child: Text(
                    "We are currently operating in the city of Bengaluru.",
                    style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  onPressed: (){
                    widget.update(6);
                  },
                  child: Text("Make an appointment", style: GoogleFonts.roboto(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),),
                )
              ],
            ),
          ),
        ],
      );
    }

    Widget _pageTwo() {
      return Stack(
        children: [
          Image.asset(
            'assets/images/landing/landing_two.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          Container(
            margin: EdgeInsets.only(left: _mediaQuery.width * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "WELCOME TO ARYA BRIGHTCARE",
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor,
                      letterSpacing: 1.2),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "We Care",
                  style: GoogleFonts.roboto(
                      fontSize: 70,
                      fontWeight: FontWeight.w900,
                      color: Theme.of(context).primaryColor,
                      height: 0.95),
                ),
                Text(
                  "About Your Health",
                  style: GoogleFonts.roboto(
                      fontSize: 70,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      height: 0.95),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 450,
                  child: Text(
                    "Everyday we bring hope and smile to the patient we serve.",
                    style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  onPressed: (){
                    widget.update(6);
                  },
                  child: Text("Make an appointment", style: GoogleFonts.roboto(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),),
                )
              ],
            ),
          ),
        ],
      );
    }

    List<Widget> _pages = [_pageTwo(), _pageOne()];

    Widget _counter() {
      return Container(
        width: double.infinity,
        height: _mediaQuery.height * 0.17,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Color(0xffDFECF1),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: _mediaQuery.width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        WebsafeSvg.asset('assets/icons/doctor.svg',
                            color: Theme.of(context).primaryColor,
                            height: _mediaQuery.height * 0.08),
                        Container(
                          height: _mediaQuery.height * 0.1,
                          width: 2,
                          color: Colors.white,
                          margin: EdgeInsets.symmetric(
                              horizontal: _mediaQuery.width * 0.01),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "200+",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 40,
                                  shadows: [
                                    Shadow(
                                      color: Theme.of(context).primaryColor,
                                      blurRadius: 5,
                                    )
                                  ]),
                            ),
                            Text(
                              "Empanelled Doctors and Nurses",
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        WebsafeSvg.asset('assets/icons/patient.svg',
                            color: Theme.of(context).primaryColor,
                            height: _mediaQuery.height * 0.08),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: _mediaQuery.width * 0.01),
                          height: _mediaQuery.height * 0.1,
                          width: 2,
                          color: Colors.white,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1000+",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 40,
                                  shadows: [
                                    Shadow(
                                      color: Theme.of(context).primaryColor,
                                      blurRadius: 5,
                                    )
                                  ]),
                            ),
                            Text(
                              "Patients Treated",
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
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

    Widget _getCounter(int code) {
      return Container(
        width: _mediaQuery.height * 0.022,
        height: _mediaQuery.height * 0.022,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: code == _cur?Colors.white:Colors.transparent,width: 1),
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: Container(
          width: _mediaQuery.height * 0.012,
          height: _mediaQuery.height * 0.012,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,),
          child: ClipOval(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  _controller.animateToPage(code);
                },
              ),
            ),
          ),
        ),
      );
    }

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: _mediaQuery.height * 0.9,
                    autoPlayInterval: Duration(seconds: 15),
                    enableInfiniteScroll: true,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    autoPlay: true,
                    onPageChanged: (val, _) {
                      setState(() {
                        _cur = val;
                      });
                    },
                  ),
                  carouselController: _controller,
                  items: [0,1].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return _pages[i];
                      },
                    );
                  }).toList(),
                ),
                Positioned(
                  left: _mediaQuery.width * 0.08,
                  bottom: _mediaQuery.height * 0.05,
                  child: Row(
                    children: [
                      _getCounter(0),
                      SizedBox(
                        width: _mediaQuery.width * 0.01,
                      ),
                      _getCounter(1),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
