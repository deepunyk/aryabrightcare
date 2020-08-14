import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
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
            Image.asset('assets/images/landing/mobile_landing_one.png',width: double.infinity,height: double.infinity,fit: BoxFit.cover,alignment: Alignment.center,),
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
            Image.asset('assets/images/landing/mobile_landing_two.png',width: double.infinity,height: double.infinity,fit: BoxFit.cover,alignment: Alignment.centerRight,),
          ],
        ),
      );
    }

    Widget _getCounter(int code) {
      return Container(
        width: 10,
        height:10,
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
      return Image.asset('assets/images/landing/landing_three.jpeg',width: double.infinity,height: _mediaQuery.height*0.73,fit: BoxFit.cover,);
    }

    Widget _pageFour(){
      return Stack(
        children: [
          Image.asset('assets/images/landing/landing_four.jpg',width: double.infinity,height: _mediaQuery.height*0.73,fit: BoxFit.cover,),
          Container(height: double.infinity,width: double.infinity,color: Color(0x66000000),),
          Padding(
            padding: EdgeInsets.only(left: _mediaQuery.width*0.08, bottom: _mediaQuery.height*0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Consultation at our office clinic", style: GoogleFonts.roboto(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),),
                Text("General physician", style: GoogleFonts.roboto(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                Text("Monday to Saturday", style: GoogleFonts.roboto(color: Colors.white, fontSize: 16),),
                Text("10am to 8pm", style: GoogleFonts.roboto(color: Colors.white, fontSize: 16),),
              ],
            ),
          )
        ],
      );
    }

    List<Widget> _pages = [_pageOne(), _pageTwo(),_pageThree(),_pageFour()];

    Widget _counter() {
      return Container(
        width: double.infinity,
        height: _mediaQuery.height * 0.15,
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        WebsafeSvg.asset('assets/icons/doctor.svg', color: Theme.of(context).primaryColor, height: _mediaQuery.width*0.08),
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
                                  color: Colors.black,
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
                        WebsafeSvg.asset('assets/icons/patient.svg', color: Theme.of(context).primaryColor, height: _mediaQuery.width*0.08),
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
                                  color: Colors.black,
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
                  items: [0, 1,2,3].map((i) {
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
                      SizedBox(
                        width: _mediaQuery.width * 0.01,
                      ),
                      _getCounter(3),
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
