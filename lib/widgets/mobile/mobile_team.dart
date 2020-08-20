import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileTeam extends StatefulWidget {
  @override
  _MobileTeamState createState() => _MobileTeamState();
}

class _MobileTeamState extends State<MobileTeam> {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;

    Widget _getDoc(String img, String name, String desig) {
      return Card(
        elevation: 3,
        child: Container(
          width: _mediaQuery.width * 0.88,
          padding: EdgeInsets.symmetric(
              vertical: _mediaQuery.height * 0.02,
              horizontal: _mediaQuery.width * 0.05),
          child: Row(
            children: [
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(

                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Theme.of(context).accentColor, width: 1)),
                    child: ClipOval(
                      child: Image.asset(
                        img,
                        height: _mediaQuery.height * 0.15,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: SizedBox(
                ),
              ),
              Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FittedBox(
                      child: AutoSizeText(
                        name,
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(
                      height: _mediaQuery.height * 0.005,
                    ),
                    AutoSizeText(
                      desig,
                      style: GoogleFonts.roboto(
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      color: Color(0xffF2FBFF),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: _mediaQuery.height * 0.05,
          ),
          AutoSizeText(
            "Our Governing Board",
            style: GoogleFonts.roboto(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 30,
            ),
            maxLines: 1,
          ),
          SizedBox(
            height: _mediaQuery.height * 0.05,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _getDoc('assets/images/doc_chin.jpeg', 'Dr. Chinmaya Urs R',
                  'Founder, CEO'),
              SizedBox(
                height: _mediaQuery.height * 0.02,
              ),
              _getDoc('assets/images/doc_abi.jpeg', 'Dr. A B Shetty',
                  'Co-founder, Managing Director'),
              SizedBox(
                height: _mediaQuery.height * 0.02,
              ),
              _getDoc('assets/images/doc_shar.jpeg', 'Dr. Sharath Chandra',
                  'Co-founder, Medical Director'),
              SizedBox(
                height: _mediaQuery.height * 0.05,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
