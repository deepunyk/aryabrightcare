import 'package:aryabrightcare/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      home: MainScreen(),
      routes: {
        MainScreen.routeName:(ctx)=>MainScreen(),
      },
    );
  }
}
