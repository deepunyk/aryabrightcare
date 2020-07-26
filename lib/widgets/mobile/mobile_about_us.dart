import 'package:aryabrightcare/widgets/custom_button.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';

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
                  "Arya BrightCare is a team of like minded medical professionals currently contributing to the solution to deal the corona pandemic situation in India.\n\nArya BrightCare is an initiative of Amma trusts, Bangalore started on 20 June 2020 is working for social cause currently by managing COVID-19 positive patients at their home, hotel isolation centres, apartment isolation centres, and hospitals dedicated as COVID Care Centres (CCC).\n\nArya BrightCare also takes up the work of sanitising homes to reduce the risk of COVID transmission.",
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
