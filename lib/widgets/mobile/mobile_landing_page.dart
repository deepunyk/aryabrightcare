import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../custom_button.dart';

class MobileLandingPage extends StatefulWidget {

  final Function update;

  MobileLandingPage(this.update);

  @override
  _MobileLandingPageState createState() => _MobileLandingPageState();
}

class _MobileLandingPageState extends State<MobileLandingPage> {

  CarouselController _controller = CarouselController();
  int _cur = 0;

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery
        .of(context)
        .size;

    Widget _pageOne() {
      return Container(
        height: _mediaQuery.height * 0.7,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset('assets/images/landing/landing_one.jpg',width: double.infinity,height: double.infinity,fit: BoxFit.cover,alignment: Alignment.centerRight,),
            Container(height: double.infinity,width: double.infinity,color: Colors.white70,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _mediaQuery.width * 0.08,
                  vertical: _mediaQuery.height * 0.08),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'ARYA BRIGHTCARE',
                    style: GoogleFonts.roboto(
                      color: Theme
                          .of(context)
                          .primaryColor,
                      fontSize: 35,
                      fontWeight: FontWeight.w900,),
                    maxLines: 1,
                  ),
                  AutoSizeText(
                    'Holistic health care service provider',
                    style: GoogleFonts.roboto(
                        color: Theme
                            .of(context)
                            .accentColor,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: _mediaQuery.height * 0.01,
                  ),
                  Text(
                    'Arya BrightCare is a dedicated team of medical professionals who are striving to make a transformative impact in the society through holistic and sustainable healthcare approach.',
                    style: GoogleFonts.roboto(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
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
          ],
        ),
      );
    }

    Widget _pageTwo() {
      return Container(
        height: _mediaQuery.height * 0.7,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset('assets/images/landing/landing_two.jpg',width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
            Container(height: double.infinity,width: double.infinity,color: Colors.white54,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _mediaQuery.width * 0.08,
                  vertical: _mediaQuery.height * 0.11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AutoSizeText(
                    'Clinically Driven Covid-19 Care',
                    style: GoogleFonts.roboto(
                      color: Theme
                          .of(context)
                          .primaryColor,
                      fontSize: 35,
                      fontWeight: FontWeight.w900,),
                    maxLines: 1,
                  ),
                  AutoSizeText(
                    'Stress free Covid-19 care in the comfort of your home',
                    style: GoogleFonts.roboto(
                        color: Theme
                            .of(context)
                            .accentColor,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: _mediaQuery.height * 0.02,
                  ),
                  CustomButton("Learn More", () {
                    widget.update(3);
                  })
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
                  color: Theme
                      .of(context)
                      .accentColor,
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

    Widget _pageThree(){
      return Image.asset('assets/images/landing/landing_three.jpeg',width: double.infinity,height: _mediaQuery.height*0.7,fit: BoxFit.cover,);
    }

    List<Widget> _pages = [_pageOne(), _pageTwo(),_pageThree()];

    Widget _counter() {
      return Container(
        width: double.infinity,
        height: _mediaQuery.height * 0.15,
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
