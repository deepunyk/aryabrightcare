import 'package:aryabrightcare/models/blogs.dart';
import 'package:aryabrightcare/widgets/blog/blogView.dart';
import 'package:aryabrightcare/widgets/contact.dart';
import 'package:aryabrightcare/widgets/mobile/blog/MobileBlogView.dart';
import 'package:aryabrightcare/widgets/mobile/blog/Mobilefilters.dart';
import 'package:aryabrightcare/widgets/mobile/mobile_footer.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
class MobileBlogScreen extends StatefulWidget {
  @override
  _MobileBlogScreenState createState() => _MobileBlogScreenState();
}

class _MobileBlogScreenState extends State<MobileBlogScreen> {
  AutoScrollController _controller = AutoScrollController();
  Blogs _blogs;
  bool _isLoad=true;
  bool _code=false;

  _getData() async{
    await _blogs.getData();
    setState(() {
      _isLoad=false;
    });
  }


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
    _blogs = Provider.of<Blogs>(context);
    final _mediaQuery = MediaQuery.of(context).size;
    if (!_code) {
      _code = true;
      _getData();
    }
    return Scaffold(
      body:Column(
        children: [
          Expanded(
            child: _isLoad ? Center(child: CircularProgressIndicator(),) : ListView(
              controller: _controller,
              children: [
                Container(
                  width: double.infinity,
                  height: _mediaQuery.height,
                  child: Row(
                    children: [
                      MobileBlogView(),
                    ],
                  ),
                ),
                MobileFooter(),
              ],
            ),
          ),
        ],
      ) ,
      floatingActionButton: FloatingActionButton(
        child: Icon(MdiIcons.filter),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: (){
          showModalBottomSheet<void>(
            context: context,
            shape: RoundedRectangleBorder(),
            enableDrag: true,
            builder: (BuildContext context) {
              return MobileFilter();
            },
          );
        },
      ),
    );
  }
}
