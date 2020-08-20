import 'package:aryabrightcare/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:websafe_svg/websafe_svg.dart';

class MAboutUs extends StatefulWidget {
  final Function update;

  MAboutUs(this.update);

  @override
  _MAboutUsState createState() => _MAboutUsState();
}

class _MAboutUsState extends State<MAboutUs> {

  bool _isTablet = false;

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;

    var longestSide = MediaQuery.of(context).size.longestSide;

    if(longestSide<1290){
      _isTablet = true;
    }else{
      _isTablet = false;
    }

    return Container(
      width: double.infinity,
      height: _mediaQuery.height*0.7,
      child: Row(
        children: [
          Image.asset('assets/images/about_us.jpg', width: _mediaQuery.width*0.4,height: double.infinity,fit: BoxFit.cover,alignment:  _isTablet?Alignment.center:Alignment.centerLeft,),
          Container(
            width: _mediaQuery.width*0.6,
            padding: EdgeInsets.only(left: _mediaQuery.width*0.03,right: _mediaQuery.width*0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ABOUT ARYA BRIGHTCARE",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w900, letterSpacing: 1.05),
                ),
                SizedBox(
                  height: _mediaQuery.height * 0.03,
                ),
                Text(
                  "Arya BrightCare is a dedicated team of medical professionals who are striving to make a transformative impact in the society by transparency, affordability, efficiency and accessibility through holistic and sustainable healthcare approach.\n\nWe provide home health solutions through home visits of doctors, nurses, physiotherapists.\n\nWe also provide nurses and caregivers to serve patients at their home.We deal with renting and purchase of medical equipments at a very reasonable cost. We also facilitate lab tests at home.",
                  style: GoogleFonts.roboto(
                      color: Colors.black87,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: _mediaQuery.height * 0.04,
                ),
                CustomButton('Know More',(){widget.update(3);})
              ],
            ),
          ),
        ],
      ),
    );
  }
}
