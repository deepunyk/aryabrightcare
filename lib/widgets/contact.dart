import 'package:aryabrightcare/widgets/custom_button.dart';
import 'package:aryabrightcare/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {

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

    return Column(
      children: [
        Container(
          height: _mediaQuery.height*0.57,
          color: Color(0xffDFECF1),
          width: _mediaQuery.width,
          padding: EdgeInsets.symmetric(horizontal: _mediaQuery.width*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: _mediaQuery.width*0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CONTACT US",
                      style: GoogleFonts.roboto(
                          color: Theme.of(context).primaryColor,
                          fontSize: 45,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: _mediaQuery.height*0.02,),
                    Text(
                      "We’d love to hear from you.",
                      style: GoogleFonts.roboto(
                        color: Theme.of(context).accentColor,
                        fontSize: 35,
                        fontWeight: FontWeight.w700,),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: _mediaQuery.height*0.02,),
                    Text(
                      "Whether you have a question about services, trials, pricing, need more clarification, or anything else, our team is ready to answer all your questions.",
                      style: GoogleFonts.roboto(
                          color: Colors.black87,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: _mediaQuery.height*0.02,),
                    CustomButton("Say Hello", (){
                      launch(_sendEmail.toString());
                    })
                  ],
                ),
              ),
              Container(
                width: _mediaQuery.width*0.4,
                child: WebsafeSvg.asset('assets/artworks/contact.svg', height: _mediaQuery.height*0.45, alignment: Alignment.centerRight),
              )
            ],
          ),
        ),
        Footer()
      ],
    );
  }
}
