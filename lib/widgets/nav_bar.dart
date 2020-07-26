import 'package:aryabrightcare/screens/service_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'contact.dart';

class NavBar extends StatefulWidget {

  final Function update;

  NavBar(this.update);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {


  @override
  Widget build(BuildContext context) {

    final _mediaQuery = MediaQuery.of(context).size;

    Widget _getNavItem(String title, int wid) {
      return Container(
        height: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              title == 'Services'?Navigator.of(context).pushNamed(ServiceScreen.routeName):
              widget.update(wid);
            },
            hoverColor: Theme.of(context).accentColor,
            child: Padding(
              padding:
              EdgeInsets.symmetric(horizontal: _mediaQuery.width * 0.05),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w500, color: Colors.white),
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
      elevation: 10,
      shadowColor: Theme.of(context).accentColor,
      child: Container(
        height: _mediaQuery.height * 0.1,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding:
                EdgeInsets.only(left: _mediaQuery.width * 0.025),
                child: Image.asset(
                  'assets/images/main_logo.png',
                  height: _mediaQuery.height * 0.07,
                )),
            Card(
              elevation: 10,
              shadowColor: Theme.of(context).accentColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40))),
              margin: EdgeInsets.zero,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(40)),
                ),
                child: ClipRRect(
                  borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(40)),
                  child: Row(
                    children: [
                      _getNavItem('Home', 1),
                      _getNavItem('About', 2),
                      _getNavItem('Services', 3),
                      _getNavItem('Team', 4),
                      _getNavItem('Contact', 5)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
