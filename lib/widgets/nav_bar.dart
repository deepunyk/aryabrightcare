import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'contact.dart';

class NavBar extends StatefulWidget {
  final Function update;

  NavBar(this.update);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  bool _isTablet = false;

  @override
  Widget build(BuildContext context) {

    final _mediaQuery = MediaQuery.of(context).size;

    var longestSide = MediaQuery.of(context).size.longestSide;

    print(longestSide.toString());
    if(longestSide<1290){
      _isTablet = true;
    }else{
      _isTablet = false;
    }

    Widget _getNavItem(String title, int wid) {
      return Container(
        height: double.infinity,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              widget.update(wid);
            },
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: _isTablet?20:40),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w500, color: Colors.black, fontSize: 18),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      margin: EdgeInsets.zero,
      elevation: 3,
      child: Container(
        height: _mediaQuery.height * 0.1,
        padding: EdgeInsets.symmetric(horizontal: _mediaQuery.width*0.07),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/main_logo.png',
              height: _mediaQuery.height * 0.07,
              width: _mediaQuery.width*0.2,
            ),
            Row(
              children: [
                _getNavItem('Home', 1),
                _getNavItem('About', 2),
                _getNavItem('Services', 3),
                _getNavItem('Team', 4),
                _getNavItem('Covid Care', 5),
                _getNavItem('Contact', 6),
                _getNavItem('Blog', 7),
              ],
            )
          ],
        ),
      ),
    );
  }
}
