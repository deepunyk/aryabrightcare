import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CovidLanding extends StatefulWidget {

  @override
  _CovidLandingState createState() => _CovidLandingState();
}

class _CovidLandingState extends State<CovidLanding> {

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;

    Widget _pageTwo() {
      return Stack(
        children: [
          Image.asset(
            'assets/images/services/home.jpg',
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
          Container(
            color: Color(0x60000000),
            width: _mediaQuery.width,
            padding: EdgeInsets.only(
                left: _mediaQuery.width * 0.08,
                right: _mediaQuery.width * 0.08),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  'Clinically Driven Covid-19 Care',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w800,letterSpacing: 1.2),
                ),
                Text(
                  'Stress free Covid-19 care in the comfort of your home',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,letterSpacing: 1.1),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: _mediaQuery.height * 0.73,
            child: _pageTwo()
          ),
        ],
      ),
    );
  }
}
