import 'mobile/mobile_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'main_screen.dart';

class CheckScreen extends StatefulWidget {

  static const routeName = '/check';

  @override
  _CheckScreenState createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsiveBuilder(builder: (context, sizingInformation) {
          // Check the sizing information here and return your UI
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return MainScreen();
          }
          if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            return MobileMainScreen();
          }
          return MainScreen();
        }));
  }
}
