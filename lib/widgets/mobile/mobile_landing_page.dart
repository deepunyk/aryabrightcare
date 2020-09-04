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
            margin: EdgeInsets.only(left: _mediaQuery.width * 0.1, bottom: _mediaQuery.height*0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "WELCOME TO ARYA BRIGHTCARE",
                  style: GoogleFonts.roboto(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor,
                      letterSpacing: 1.2),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "We are here\nfor your care",
                  style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      height: 0.95),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 450,
                  child: Text(
                    "We are currently operating in the city of Bengaluru.",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  onPressed: (){
                    widget.update(6);
                  },
                  child: Text("Make an appointment", style: GoogleFonts.roboto(
                      fontSize: 12,
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
          Container(width: double.infinity,height: double.infinity,color: Color(0x33ffffff),),
          Container(
            margin: EdgeInsets.only(left: _mediaQuery.width * 0.1, bottom: _mediaQuery.height*0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "WELCOME TO ARYA BRIGHTCARE",
                  style: GoogleFonts.roboto(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor,
                      letterSpacing: 1.2),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "We Care",
                  style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Theme.of(context).primaryColor,
                      height: 0.95),
                ),
                Text(
                  "About Your Health",
                  style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      height: 0.95),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: Text(
                    "Everyday we bring hope and smile to the patient we serve.",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  onPressed: (){
                    widget.update(6);
                  },
                  child: Text("Make an appointment", style: GoogleFonts.roboto(
                      fontSize: 12,
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

    Widget _getCounter(int code) {
      return Container(
        width: _mediaQuery.height * 0.022,
        height: _mediaQuery.height * 0.022,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: code == _cur?Theme.of(context).primaryColor:Colors.transparent,width: 1),
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: Container(
          width: _mediaQuery.height * 0.012,
          height: _mediaQuery.height * 0.012,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
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
                  right: _mediaQuery.width * 0.08,
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
