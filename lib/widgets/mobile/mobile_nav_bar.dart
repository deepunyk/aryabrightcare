import 'package:flutter/material.dart';

class MobileNavBar extends StatefulWidget {
  @override
  _MobileNavBarState createState() => _MobileNavBarState();
}

class _MobileNavBarState extends State<MobileNavBar> {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;

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
              padding: EdgeInsets.only(left: _mediaQuery.width * 0.025),
              child: Image.asset(
                'assets/images/main_logo.png',
                height: _mediaQuery.height * 0.07,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
