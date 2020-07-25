import 'package:aryabrightcare/widgets/about_us.dart';
import 'package:aryabrightcare/widgets/custom_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
      return Container(
        color: Color(0xffDFECF1),
        padding: EdgeInsets.symmetric(
          horizontal: _mediaQuery.width * 0.08,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: _mediaQuery.width * 0.42,
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
                    'Holistic health care service provider.',
                    style: GoogleFonts.roboto(
                        color: Theme.of(context).accentColor,
                        fontSize: 35,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Arya BrightCare is a dedicated team of medical professionals who are striving to make a transformative impact in the society by transparency, affordability, efficiency and accessibility through holistic and sustainable healthcare approach.',
                    style: GoogleFonts.roboto(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: _mediaQuery.height * 0.01,
                  ),
                  CustomButton("Learn More", () {widget.update(2);})
                ],
              ),
            ),
            Container(
              width: _mediaQuery.width * 0.42,
              alignment: Alignment.bottomRight,
              child: WebsafeSvg.asset('assets/artworks/home_main_doc.svg',
                  height: _mediaQuery.height * 0.65),
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
              _cur == code?BoxShadow(
                  color: Theme.of(context).accentColor,
                  blurRadius: 3,
                  spreadRadius: 1):BoxShadow(),
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
            height: _mediaQuery.height * 0.7,
            child: Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: _mediaQuery.height * 0.7,
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
                  items: [1, 2].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return _pageOne();
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
          Container(
              width: double.infinity,
              height: _mediaQuery.height * 0.2,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/artworks/counter.jpg',
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Color(0x99006591),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: _mediaQuery.width * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "200+",
                              style: GoogleFonts.roboto(
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 40,shadows: [Shadow(color: Colors.white, blurRadius: 2,)]),
                            ),
                            Text(
                              "Empanelled Doctors and Nurses",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        Container(
                          height: double.infinity,
                          width: 5,
                          color: Theme.of(context).accentColor,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "100+",
                              style: GoogleFonts.roboto(
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 40, shadows: [Shadow(color: Colors.white, blurRadius: 2,)]),
                            ),
                            Text(
                              "Patients Treated",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
