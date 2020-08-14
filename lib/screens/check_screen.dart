import 'package:aryabrightcare/screens/desktop/main_screen.dart';
import 'package:aryabrightcare/screens/tablet/tablet_main_screen.dart';

import 'mobile/mobile_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
        } else if (sizingInformation.deviceScreenType ==
            DeviceScreenType.mobile) {
          return MobileMainScreen();
        } else if (sizingInformation.deviceScreenType ==
            DeviceScreenType.tablet) {
          return TabletMainScreen();
        }
        return MainScreen();
      }),
    );
  }
}
