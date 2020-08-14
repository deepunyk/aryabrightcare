import 'package:aryabrightcare/widgets/contact.dart';
import 'package:aryabrightcare/widgets/covid/covid_landing.dart';
import 'package:aryabrightcare/widgets/covid/covid_service.dart';
import 'package:aryabrightcare/widgets/nav_bar.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CovidMainScreen extends StatefulWidget {

  @override
  _CovidMainScreenState createState() => _CovidMainScreenState();
}

class _CovidMainScreenState extends State<CovidMainScreen> {

  AutoScrollController _controller = AutoScrollController();


  _updatePage(int code){
    _controller.scrollToIndex(code,preferPosition: AutoScrollPosition.begin);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;


    return Column(
        children: [
          Expanded(
            child: ListView(
              controller: _controller,
              children: [
                CovidLanding(),
                CovidService(),
                Contact(),
              ],
            ),
          ),
        ],
      );
  }
}
