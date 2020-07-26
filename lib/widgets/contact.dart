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
          color: Color(0xffDFECF1),
          width: _mediaQuery.width,
          padding: EdgeInsets.symmetric(horizontal: _mediaQuery.width*0.08),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: _mediaQuery.height*0.04,),
              Icon(Icons.mail, color: Theme.of(context).primaryColor,size: _mediaQuery.height*0.07,),
              SizedBox(height: _mediaQuery.height*0.01,),
              Text(
                "Looking for more information, or have questions about the information presented?",
                style: GoogleFonts.roboto(
                    color: Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: _mediaQuery.height*0.02,),
              CustomButton("Contact Us", (){
                launch(_sendEmail.toString());
              }),
              SizedBox(height: _mediaQuery.height*0.04,),
            ],
          ),
        ),
        Footer()
      ],
    );
  }
}
