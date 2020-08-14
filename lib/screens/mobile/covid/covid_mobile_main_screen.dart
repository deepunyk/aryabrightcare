import 'package:aryabrightcare/widgets/contact.dart';
import 'package:aryabrightcare/widgets/covid/covid_landing.dart';
import 'package:aryabrightcare/widgets/covid/covid_service.dart';
import 'package:aryabrightcare/widgets/mobile/covid/covid_mobile_landing.dart';
import 'package:aryabrightcare/widgets/mobile/covid/covid_mobile_service.dart';
import 'package:aryabrightcare/widgets/mobile/mobile_footer.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:flutter/material.dart';

class CovidMobileMainScreen extends StatefulWidget {
  @override
  _CovidMobileMainScreenState createState() => _CovidMobileMainScreenState();
}

class _CovidMobileMainScreenState extends State<CovidMobileMainScreen> {

  AutoScrollController _controller = AutoScrollController();



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Expanded(
            child: ListView(
              controller: _controller,
              children: [
                CovidMobileLanding(),
                CovidMobileService(),
                MobileFooter(),
              ],
            ),
          ),
        ]
    );
  }
}
