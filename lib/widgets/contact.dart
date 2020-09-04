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
      queryParameters: {'subject': 'About ARYA BRIGHTCARE'});

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;

    Widget _counter() {
      return Container(
        width: double.infinity,
        height: _mediaQuery.height * 0.2,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/landing/landing_two.jpg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Color(0x80006591),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: _mediaQuery.width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        WebsafeSvg.asset('assets/icons/doctor.svg',
                            color: Colors.white,
                            height: _mediaQuery.height * 0.08),
                        Container(
                          height: _mediaQuery.height * 0.1,
                          width: 2,
                          color: Colors.white,
                          margin: EdgeInsets.symmetric(
                              horizontal: _mediaQuery.width * 0.01),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "200+",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 40,
                                  shadows: [
                                    Shadow(
                                      color: Theme.of(context).primaryColor,
                                      blurRadius: 5,
                                    )
                                  ]),
                            ),
                            Text(
                              "Empanelled Doctors and Nurses",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        WebsafeSvg.asset('assets/icons/patient.svg',
                            color: Colors.white,
                            height: _mediaQuery.height * 0.08),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: _mediaQuery.width * 0.01),
                          height: _mediaQuery.height * 0.1,
                          width: 2,
                          color: Colors.white,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1000+",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 40,
                                  shadows: [
                                    Shadow(
                                      color: Theme.of(context).primaryColor,
                                      blurRadius: 5,
                                    )
                                  ]),
                            ),
                            Text(
                              "Patients Treated",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            )
                          ],
                        ),
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

    return Column(
      children: [
        _counter(),
        Container(
          color: Color(0xffF2FBFF),
          width: _mediaQuery.width,
          padding: EdgeInsets.symmetric(horizontal: _mediaQuery.width * 0.08),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              Icon(
                Icons.mail,
                color: Theme.of(context).primaryColor,
                size: _mediaQuery.height * 0.07,
              ),
              SizedBox(
                height: _mediaQuery.height * 0.01,
              ),
              Text(
                "Looking for more information, or have questions about the information presented?",
                style: GoogleFonts.roboto(
                    color: Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: _mediaQuery.height * 0.02,
              ),
              CustomButton("Contact Us", () {
                launch(_sendEmail.toString());
              }),
              SizedBox(
                height: _mediaQuery.height * 0.04,
              ),
            ],
          ),
        ),
        Footer()
      ],
    );
  }
}
