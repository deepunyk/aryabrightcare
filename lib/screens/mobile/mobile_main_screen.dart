import 'package:aryabrightcare/screens/mobile/covid/covid_mobile_main_screen.dart';
import 'package:aryabrightcare/widgets/mobile/mobile_about_us.dart';
import 'package:aryabrightcare/widgets/mobile/mobile_footer.dart';
import 'package:aryabrightcare/widgets/mobile/mobile_landing_page.dart';
import 'package:aryabrightcare/widgets/mobile/mobile_services.dart';
import 'package:aryabrightcare/widgets/mobile/mobile_team.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class MobileMainScreen extends StatefulWidget {

  static const routeName = '/mobileMain';

  @override
  _MobileMainScreenState createState() => _MobileMainScreenState();
}

class _MobileMainScreenState extends State<MobileMainScreen> {

  AutoScrollController _controller = AutoScrollController();
  int _curWidget = 0;

  _updatePage(int code){
    if(code == 5){
      _curWidget = 1;
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
  Widget build(BuildContext context) {

    final _mediaQuery = MediaQuery.of(context).size;

    Widget _getDrawer(){
      return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                height: _mediaQuery.height*0.07,
                padding: EdgeInsets.symmetric(vertical: _mediaQuery.height*0.008,horizontal: _mediaQuery.width*0.02),
                child: Image.asset(
                  'assets/images/main_logo.png',
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home, color: Theme.of(context).primaryColor,),
              onTap: () {
                _updatePage(1);
                _curWidget = 0;
                Navigator.of(context).pop();
                setState(() {

                });
              },
            ),
            ListTile(
              title: Text('About Us'),
              leading: Icon(Icons.info_outline, color: Theme.of(context).primaryColor,),
              onTap: () {
                _updatePage(2);
                _curWidget = 0;
                Navigator.of(context).pop();
                setState(() {

                });
              },
            ),
            ListTile(
              title: Text('Services'),
              leading: Icon(Icons.person_pin, color: Theme.of(context).primaryColor,),
              onTap: () {
                _updatePage(3);
                _curWidget = 0;
                Navigator.of(context).pop();
                setState(() {

                });
              },
            ),
            ListTile(
              title: Text('Covid Care'),
              leading: Icon(MdiIcons.medicalBag, color: Theme.of(context).primaryColor,),
              onTap: () {
                _curWidget = 1;
                Navigator.of(context).pop();
                setState(() {

                });
              },
            ),
            ListTile(
              title: Text('Team'),
              leading: Icon(Icons.supervisor_account, color: Theme.of(context).primaryColor,),
              onTap: () {
                _updatePage(4);
                _curWidget = 0;
                Navigator.of(context).pop();
                setState(() {

                });
              },
            ),
            ListTile(
              title: Text('Contact Us'),
              leading: Icon(Icons.call, color: Theme.of(context).primaryColor,),
              onTap: () {
                _updatePage(5);
                _curWidget = 0;
                Navigator.of(context).pop();
                setState(() {

                });
              },
            ),
          ],
        ),
      );
    }

    Widget _homeWidget(){
      return Column(
        children: [
          Expanded(
            child: ListView(
              controller: _controller,
              children: [
                AutoScrollTag(index: 1,controller: _controller,child: MobileLandingPage(_updatePage), key: Key("1"),),
                AutoScrollTag(index: 2,controller: _controller,child: MobileAboutUs(_updatePage), key: Key("2"),),
                AutoScrollTag(index: 3,controller: _controller,child: MobileServices(_updatePage), key: Key("3"),),
                AutoScrollTag(index: 4,controller: _controller,child: MobileTeam(), key: Key("4"),),
                AutoScrollTag(index: 5,controller: _controller,child: MobileFooter(), key: Key("5"),),
              ],
            ),
          ),
        ],
      );
    }

    Widget _covidWidget(){
      return CovidMobileMainScreen();
    }

    List<Widget> _widgetList = [_homeWidget(), _covidWidget()];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        elevation: 5,
        title: Container(
          height: _mediaQuery.height*0.07,
          padding: EdgeInsets.symmetric(vertical: _mediaQuery.height*0.008),
          child: Image.asset(
            'assets/images/main_logo.png',
          ),
        ),
      ),
      drawer: _getDrawer(),
      body: AnimatedSwitcher(
        child: _widgetList[_curWidget],
        duration: Duration(milliseconds: 500),
      )
    );
  }
}
