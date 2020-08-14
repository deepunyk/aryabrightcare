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
            'assets/images/landing/landing_five.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ],
      );
    }

    Widget _pageTwo() {
      return Stack(
        children: [
          Image.asset(
            'assets/images/landing/landing_one.png',
            width: double.infinity,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ],
      );
    }

    Widget _pageThree() {
      return Stack(
        children: [
          Image.asset(
            'assets/images/landing/landing_two.png',
            width: double.infinity,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ],
      );
    }

    List<Widget> _pages = [_pageOne(), _pageTwo(),_pageThree()];

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
                        WebsafeSvg.asset('assets/icons/doctor.svg', color: Theme.of(context).primaryColor, height: _mediaQuery.height*0.08),
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
                        WebsafeSvg.asset('assets/icons/patient.svg', color: Theme.of(context).primaryColor, height: _mediaQuery.height*0.08),
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
            child: Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlayInterval: Duration(seconds: 15),
                    enableInfiniteScroll: true,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    aspectRatio: 1920/540,
                    autoPlay: true,
                    onPageChanged: (val, _) {
                      setState(() {
                        _cur = val;
                      });
                    },
                  ),
                  carouselController: _controller,
                  items: [0, 1,2].map((i) {
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
                      SizedBox(
                        width: _mediaQuery.width * 0.01,
                      ),
                      _getCounter(2),
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
