import 'package:aryabrightcare/widgets/custom_button.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileAboutUs extends StatefulWidget {

  final Function update;

  MobileAboutUs(this.update);

  @override
  _MobileAboutUsState createState() => _MobileAboutUsState();
}

class _MobileAboutUsState extends State<MobileAboutUs> {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: _mediaQuery.height*0.05,),
          Text(
            "ABOUT US",
            style: GoogleFonts.roboto(
                color: Theme.of(context).primaryColor,
                fontSize: 30,
                fontWeight: FontWeight.w900),
          ),
          SizedBox(height: _mediaQuery.height*0.05,),
          Card(
            margin: EdgeInsets.symmetric(horizontal: _mediaQuery.width*0.02),
            elevation: 5,
            child: Image.asset(
              'assets/images/about_us.jpg',
              width: double.infinity,
              height: _mediaQuery.height*0.5,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: _mediaQuery.width * 0.03,
                right: _mediaQuery.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: _mediaQuery.height * 0.03,
                ),
                AutoSizeText(
                  "Arya BrightCare is a dedicated team of medical professionals who are striving to make a transformative impact in the society by transparency, affordability, efficiency and accessibility through holistic and sustainable healthcare approach.\n\nWe provide home health solutions through home visits of doctors, nurses, physiotherapists.\n\nWe also provide nurses and caregivers to serve patients at their home.We deal with renting and purchase of medical equipments at a very reasonable cost.\nWe also facilitate lab tests at home.",
                  style: GoogleFonts.roboto(
                      color: Colors.black87,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: _mediaQuery.height * 0.04,
                ),
                CustomButton('Know More', () {
                  widget.update(3);
                }),
                SizedBox(height: _mediaQuery.height*0.05,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
