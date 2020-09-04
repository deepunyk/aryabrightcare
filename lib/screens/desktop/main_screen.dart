import 'package:aryabrightcare/screens/desktop/Blog/blog_screen.dart';
import 'package:aryabrightcare/screens/desktop/covid/covid_main_screen.dart';
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
  int _curWidget = 0;
  
  _updatePage(int code){
    if(code == 5){
      _curWidget = 1;
      setState(() {

      });
    }else if(code == 7){
      _curWidget = 2;
      setState(() {

      });
    }else{
      _curWidget = 0;
      _controller.scrollToIndex(code,preferPosition: AutoScrollPosition.begin);
      setState(() {

      });
    }

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    final _mediaQuery = MediaQuery.of(context).size;

    Widget _homeWidget(){
      return ListView(
        
        controller: _controller,
        children: [
          AutoScrollTag(index: 1,controller: _controller,child: LandingPage(_updatePage), key: Key("1"),),
          AutoScrollTag(index: 2,controller: _controller,child: MAboutUs(_updatePage), key: Key("2"),),
          AutoScrollTag(index: 3,controller: _controller,child: MServices(_updatePage), key: Key("3"),),
          AutoScrollTag(index: 4,controller: _controller,child: Partners(), key: Key("4"),),
          AutoScrollTag(index: 5,controller: _controller,child: Contact(), key: Key("6"),),
        ],
      );
    }

    Widget _covidWidget(){
      return CovidMainScreen();
    }
    Widget _blogWidget(){
      return BlogScreen();
    }

    List<Widget> _widgetList = [_homeWidget(), _covidWidget(),_blogWidget()];
  
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          NavBar(_updatePage),
          Expanded(
            child: AnimatedSwitcher(
              child: _widgetList[_curWidget],
              duration: Duration(milliseconds: 500),
            ),
          )
        ],
      ),
    );
  }
}