import 'package:aryabrightcare/widgets/contact.dart';
import 'package:aryabrightcare/widgets/landing_page.dart';
import 'package:aryabrightcare/widgets/mabout_us.dart';
import 'package:aryabrightcare/widgets/mservices.dart';
import 'package:aryabrightcare/widgets/nav_bar.dart';
import 'package:aryabrightcare/widgets/team.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/mainScreen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

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

    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          NavBar(_updatePage),
          Expanded(
            child: ListView(
              controller: _controller,
              children: [
                AutoScrollTag(index: 1,controller: _controller,child: LandingPage(_updatePage), key: Key("1"),),
                AutoScrollTag(index: 2,controller: _controller,child: MAboutUs(_updatePage), key: Key("2"),),
                AutoScrollTag(index: 3,controller: _controller,child: MServices(), key: Key("3"),),
                AutoScrollTag(index: 4,controller: _controller,child: Partners(), key: Key("4"),),
                AutoScrollTag(index: 5,controller: _controller,child: Contact(), key: Key("5"),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}