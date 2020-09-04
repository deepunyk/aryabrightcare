import 'package:aryabrightcare/models/blogs.dart';
import 'package:aryabrightcare/widgets/blog/blogView.dart';
import 'package:aryabrightcare/widgets/blog/filter.dart';
import 'package:aryabrightcare/widgets/blog/services.dart';
import 'package:aryabrightcare/widgets/contact.dart';
import 'package:aryabrightcare/widgets/covid/covid_landing.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class BlogScreen extends StatefulWidget {
  @override
  _BlogScreenState createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  AutoScrollController _controller = AutoScrollController();
  Blogs _blogs;
  bool _isLoad = true;
  bool _code = false;

  _getData() async {
    await _blogs.getData();
    setState(() {
      _isLoad = false;
    });
  }

  _updatePage(int code) {
    _controller.scrollToIndex(code, preferPosition: AutoScrollPosition.begin);
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
    return Column(
      children: [
        Expanded(
          child: ListView(
            controller: _controller,
            children: [
              _isLoad
                  ? Container(
                      height: _mediaQuery.height * 0.5,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ))
                  : Container(
                      width: double.infinity,
                      height: _mediaQuery.height,
                      child: Row(
                        children: [
                          FilterBar(),
                          BlogView(),
                          ServicesBar(),
                        ],
                      ),
                    ),
              Contact(),
            ],
          ),
        ),
      ],
    );
  }
}
