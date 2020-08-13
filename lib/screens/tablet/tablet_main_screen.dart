import 'package:aryabrightcare/screens/main_screen.dart';
import 'package:aryabrightcare/screens/mobile/mobile_main_screen.dart';
import 'package:flutter/material.dart';

class TabletMainScreen extends StatefulWidget {
  @override
  _TabletMainScreenState createState() => _TabletMainScreenState();
}

class _TabletMainScreenState extends State<TabletMainScreen> {
  @override
  Widget build(BuildContext context) {

    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    if(isPortrait){
      return MobileMainScreen();
    }else{
      return MainScreen();
    }
  }
}
