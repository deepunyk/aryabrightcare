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
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: _mediaQuery.height*0.7,
      child: Row(
        children: [
          Image.asset('assets/images/about_us.jpg', width: _mediaQuery.width*0.5,height: double.infinity,fit: BoxFit.cover,),
          Container(
            width: _mediaQuery.width*0.5,
            padding: EdgeInsets.only(left: _mediaQuery.width*0.03,right: _mediaQuery.width*0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ABOUT US",
                  style: GoogleFonts.roboto(
                      color: Theme.of(context).primaryColor,
                      fontSize: 40,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: _mediaQuery.height * 0.03,
                ),
                Text(
                  "Arya BrightCare is a team of like minded medical professionals currently contributing to the solution to deal the corona pandemic situation in India.\n\nArya BrightCare is an initiative of Amma trusts, Bangalore started on 20 June 2020 is working for social cause currently by managing COVID-19 positive patients at their home, hotel isolation centres, apartment isolation centres, and hospitals dedicated as COVID Care Centres (CCC).\n\nArya BrightCare also takes up the work of sanitising homes to reduce the risk of COVID transmission.",
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
