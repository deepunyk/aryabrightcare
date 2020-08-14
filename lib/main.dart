import 'package:aryabrightcare/screens/check_screen.dart';
import 'package:aryabrightcare/screens/desktop/main_screen.dart';
import 'package:aryabrightcare/screens/mobile/mobile_main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AryaBrightCare',
      theme: ThemeData(
        primaryColor: Color(0xff006591),
        accentColor: Color(0xfffb5d60),
        highlightColor: Color(0xff006591),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: CheckScreen(),
      routes: {
        MainScreen.routeName:(ctx)=>MainScreen(),
        CheckScreen.routeName:(ctx)=>CheckScreen(),
        MobileMainScreen.routeName:(ctx)=>MobileMainScreen(),
      },
    );
  }
}
