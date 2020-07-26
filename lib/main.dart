import 'package:aryabrightcare/screens/main_screen.dart';
import 'package:aryabrightcare/screens/mobile/mobile_services_screen.dart';
import 'package:aryabrightcare/screens/service_screen.dart';
import 'package:aryabrightcare/widgets/mobile/mobile_services.dart';

import 'screens/mobile/mobile_main_screen.dart';
import 'screens/check_screen.dart';
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
        ServiceScreen.routeName:(ctx)=>ServiceScreen(),
        CheckScreen.routeName:(ctx)=>CheckScreen(),
        MobileMainScreen.routeName:(ctx)=>MobileMainScreen(),
        MobileServicesScreen.routeName:(ctx)=>MobileServicesScreen(),
      },
    );
  }
}
