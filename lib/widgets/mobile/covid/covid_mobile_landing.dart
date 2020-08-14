import 'package:aryabrightcare/widgets/custom_button.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';

class CovidMobileLanding extends StatefulWidget {

  @override
  _CovidMobileLandingState createState() => _CovidMobileLandingState();
}

class _CovidMobileLandingState extends State<CovidMobileLanding> {

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery
        .of(context)
        .size;

    Widget _pageThree(){
      return Image.asset('assets/images/landing/landing_three.jpeg',width: double.infinity,height: _mediaQuery.height*0.7,fit: BoxFit.cover,);
    }

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: _mediaQuery.height * 0.73,
              child: _pageThree(),
          ),
        ],
      ),
    );
  }
}
