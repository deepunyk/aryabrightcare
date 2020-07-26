import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {


  final Uri _sendEmail = Uri(
      scheme: 'mailto',
      path: 'aryabrightcare@gmail.com',
      queryParameters: {
        'subject': 'About ARYA BRIGHTCARE'
      }
  );

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;


    Widget _getSocialIcon(String path, String url){
      return Container(
        height: _mediaQuery.height * 0.04,
        width: _mediaQuery.height * 0.04,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: ClipOval(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () async{
                if(url == 'gmail'){
                  launch(_sendEmail.toString());
                }else {
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                }
              },
              hoverColor: Color(0xffDFECF1),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: _mediaQuery.height * 0.01),
                child: WebsafeSvg.asset(path,
                    color: Theme.of(context).primaryColor),
              ),
            ),
          ),
        ),
      );
    }

    return Column(
      children: [
        Container(
          height: _mediaQuery.height * 0.26,
          color: Colors.black87,
          padding: EdgeInsets.only(left: _mediaQuery.width*0.08,right: _mediaQuery.width*0.08, top: _mediaQuery.height*0.04),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: _mediaQuery.width*0.25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About Arya BrightCare",style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                    SizedBox(height: _mediaQuery.height*0.015,),
                    Text("Holistic health care service provider",style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),textAlign: TextAlign.start,),
                    SizedBox(height: _mediaQuery.height*0.01,),
                    Text("Arya BrightCare is a dedicated team of medical professionals who are striving to make a transformative impact in the society by transparency, affordability, efficiency and accessibility through holistic and sustainable healthcare approach.",style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),textAlign: TextAlign.start,),
                  ],
                ),
              ),
              Container(
                width: _mediaQuery.width*0.25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Contact",style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                    SizedBox(height: _mediaQuery.height*0.015,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on, color: Theme.of(context).accentColor,size: 20),
                        SizedBox(width: _mediaQuery.width*0.002,),
                        Expanded(
                          child: SelectableText("#1194, CHIRANTHANA, 1st cross, 1st main, BEML layout 5th stage, Rajarajeshwari nagar, Bengaluru- 560098",style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),textAlign: TextAlign.start,),
                        )
                      ],
                    ),
                    SizedBox(height: _mediaQuery.height*0.01,),
                    Row(
                      children: [
                        Icon(Icons.phone, color: Theme.of(context).accentColor,size: 20),
                        SizedBox(width: _mediaQuery.width*0.002,),
                        Expanded(
                          child: SelectableText("+91 7795059301, +91 7411065301",style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),textAlign: TextAlign.start,),
                        )
                      ],
                    ),
                    SizedBox(height: _mediaQuery.height*0.01,),
                    GestureDetector(
                      onTap: (){launch(_sendEmail.toString());},
                      child: Row(
                        children: [
                          Icon(Icons.mail, color: Theme.of(context).accentColor,size: 20,),
                          SizedBox(width: _mediaQuery.width*0.002,),
                          Expanded(
                            child: SelectableText("aryabrightcare@gmail.com",style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w300),textAlign: TextAlign.start,),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Quick Link",style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                  SizedBox(height: _mediaQuery.height*0.015,),
                  Text("Privacy Policy",style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),textAlign: TextAlign.start,),
                  SizedBox(height: _mediaQuery.height*0.01,),
                  Text("Terms & Condition",style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),textAlign: TextAlign.start,),
                  SizedBox(height: _mediaQuery.height*0.01,),
                  Text("Licenses",style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),textAlign: TextAlign.start,),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: _mediaQuery.height * 0.07,
          color: Theme.of(context).primaryColor,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _getSocialIcon('assets/icons/fbIcon.svg','https://www.facebook.com/arya.brightcare'),
                    SizedBox(width: _mediaQuery.width*0.012,),
                    _getSocialIcon('assets/icons/igIcon.svg','https://www.instagram.com/aryabrightcare/'),
                    SizedBox(width: _mediaQuery.width*0.012,),
                    _getSocialIcon('assets/icons/mailIcon.svg','gmail'),
                    SizedBox(width: _mediaQuery.width*0.012,),
                    _getSocialIcon('assets/icons/twitterIcon.svg','https://twitter.com/aryabrightcare')
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: _mediaQuery.width*0.02),
                  child: Text("Copyright ©2020 All rights reserved", style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
