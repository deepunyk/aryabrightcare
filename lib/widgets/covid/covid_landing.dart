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
            height: _mediaQuery.height * 0.9,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          Container(
            width: _mediaQuery.width,
            padding: EdgeInsets.only(
                left: _mediaQuery.width * 0.08,
                right: _mediaQuery.width * 0.08),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  'Clinically Driven',
                  style: GoogleFonts.roboto(
                      color: Theme.of(context).primaryColor,
                      fontSize: 60,
                      fontWeight: FontWeight.w900,letterSpacing: 1.05, shadows: [Shadow(color: Colors.white, blurRadius: 1)]),
                ),
                Text(
                  'Covid-19 Care',
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 60,
                      fontWeight: FontWeight.w900,letterSpacing: 1.05,shadows: [Shadow(color: Colors.white, blurRadius: 1)]),
                ),
                Text(
                  'Stress free Covid-19 care in the comfort of your home',
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
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
            height: _mediaQuery.height * 0.9,
            child: _pageTwo()
          ),
        ],
      ),
    );
  }
}
