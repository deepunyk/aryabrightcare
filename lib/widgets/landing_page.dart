import 'package:aryabrightcare/models/trap_clip.dart';
import 'package:aryabrightcare/models/trap_clip_two.dart';
import 'package:aryabrightcare/widgets/about_us.dart';
import 'package:aryabrightcare/widgets/custom_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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
            'assets/images/landing/landing_one.jpg',
            width: double.infinity,
            height: _mediaQuery.height * 0.73,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0x1a006591),
          ),
          ClipPath(
            clipper: TrapClipOne(),
            child: Container(
              color: Colors.white,
              width: _mediaQuery.width * 0.6,
              padding: EdgeInsets.only(
                  left: _mediaQuery.width * 0.08,
                  right: _mediaQuery.width * 0.13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ARYA BRIGHTCARE',
                    style: GoogleFonts.roboto(
                        color: Theme.of(context).primaryColor,
                        fontSize: 50,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    'Holistic health care service provider',
                    style: GoogleFonts.roboto(
                        color: Theme.of(context).accentColor,
                        fontSize: 35,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: _mediaQuery.height * 0.01,
                  ),
                  Text(
                    'Arya BrightCare is a dedicated team of medical professionals who are striving to make a transformative impact in the society through holistic and sustainable healthcare approach.',
                    style: GoogleFonts.roboto(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: _mediaQuery.height * 0.02,
                  ),
                  CustomButton("Learn More", () {
                    widget.update(2);
                  })
                ],
              ),
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
            height: _mediaQuery.height * 0.73,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0x1a006591),
          ),
          ClipPath(
            clipper: TrapClipTwo(),
            child: Container(
              color: Colors.white,
              width: _mediaQuery.width * 0.5,
              padding: EdgeInsets.only(
                  left: _mediaQuery.width * 0.08,
                  right: _mediaQuery.width * 0.13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    'Clinically Driven Covid-19 Care',
                    style: GoogleFonts.roboto(
                        color: Theme.of(context).primaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    'Stress free Covid-19 care in the comfort of your home',
                    style: GoogleFonts.roboto(
                        color: Theme.of(context).accentColor,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: _mediaQuery.height * 0.01,
                  ),
                  CustomButton("Learn More", () {
                    widget.update(3);
                  })
                ],
              ),
            ),
          ),
        ],
      );
    }

    List<Widget> _pages = [_pageOne(), _pageTwo()];

    Widget _counter() {
      return Container(
        width: double.infinity,
        height: _mediaQuery.height * 0.17,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Color(0xfffb5d60),
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
                        WebsafeSvg.asset('assets/icons/doctor.svg', color: Colors.white, height: _mediaQuery.height*0.08),
                        Container(
                          height: _mediaQuery.height*0.1,
                          width: 2,
                          color: Colors.white,
                          margin: EdgeInsets.symmetric(horizontal: _mediaQuery.width*0.01),
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
                                  color: Colors.white,
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
                        WebsafeSvg.asset('assets/icons/patient.svg', color: Colors.white, height: _mediaQuery.height*0.08),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: _mediaQuery.width*0.01),
                          height: _mediaQuery.height*0.1,
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
                                  color: Colors.white,
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
        width: _mediaQuery.height * 0.02,
        height: _mediaQuery.height * 0.02,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              _cur == code
                  ? BoxShadow(
                      color: Theme.of(context).accentColor,
                      blurRadius: 3,
                      spreadRadius: 1)
                  : BoxShadow(),
            ]),
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
      );
    }

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: _mediaQuery.height * 0.73,
            child: Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: _mediaQuery.height * 0.73,
                    autoPlayInterval: Duration(seconds: 50),
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
                  items: [0, 1].map((i) {
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
          _counter()
        ],
      ),
    );
  }
}
