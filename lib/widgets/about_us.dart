import 'package:aryabrightcare/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:websafe_svg/websafe_svg.dart';

class AboutUs extends StatefulWidget {

  final Function update;

  AboutUs(this.update);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: _mediaQuery.height * 0.7,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: _mediaQuery.width * 0.2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        "Holistic health care service provider.",
                        style: GoogleFonts.roboto(
                          color: Theme.of(context).accentColor,
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: _mediaQuery.height * 0.02,
                      ),
                      Text(
                        "Arya BrightCare is a team of like minded medical professionals currently contributing to the solution to deal the corona pandemic situation in India. Arya BrightCare is an initiative of Amma trusts, Bangalore started on 20 June 2020 is working for social cause currently by managing COVID-19 positive patients at their home, hotel isolation centres, apartment isolation centres, and hospitals dedicated as COVID Care Centres (CCC). Arya BrightCare also takes up the work of sanitising homes to reduce the risk of COVID transmission.",
                        style: GoogleFonts.roboto(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: _mediaQuery.height * 0.04,
                      ),
                      CustomButton('Know More',(){widget.update(3);})
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: _mediaQuery.width * 0.1),
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                          left: 0,
                          top: _mediaQuery.height * 0.25,
                          child: WebsafeSvg.asset(
                            'assets/artworks/about_doc_one.svg',
                            height: _mediaQuery.height * 0.6,
                          )),
                      Positioned(
                          right: 0,
                          top: _mediaQuery.height * 0.25,
                          child: WebsafeSvg.asset(
                            'assets/artworks/about_doc_two.svg',
                            height: _mediaQuery.height * 0.6,
                          )),
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
}
