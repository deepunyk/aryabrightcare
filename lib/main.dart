import 'package:aryabrightcare/models/blogs.dart';
import 'package:aryabrightcare/screens/check_screen.dart';
import 'package:aryabrightcare/screens/desktop/main_screen.dart';
import 'package:aryabrightcare/screens/mobile/mobile_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>Blogs(),
      child: MaterialApp(
        title: 'AryaBrightCare',
        theme: ThemeData(
          primaryColor: Color(0xff006591),
          scaffoldBackgroundColor: Colors.white,
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
      ),
    );
  }
}
