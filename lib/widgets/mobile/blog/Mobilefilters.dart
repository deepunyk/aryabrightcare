import 'package:aryabrightcare/models/blogs.dart';
import 'package:aryabrightcare/widgets/blog/filter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class MobileFilter extends StatefulWidget {
  @override
  _MobileFilterState createState() => _MobileFilterState();
}

class _MobileFilterState extends State<MobileFilter> {
  Blogs _blogs;
  @override
  Widget build(BuildContext context) {
    _blogs=Provider.of<Blogs>(context);
    final _mediaQuery = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text("Filter by Category",textAlign: TextAlign.center,style: TextStyle(color:Theme.of(context).accentColor),),
        ),
        Container(
          height: _mediaQuery.height*0.4,
          child: ListView.builder(
              itemCount:_blogs.getCategory().length,
              itemBuilder: (BuildContext context, int item){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CheckboxListTile(
                    title: Text(_blogs.getCategory()[item]["name"]),
                    value:_blogs.getCategory()[item]["selected"] ,
                    onChanged: (bool value) {
                      _blogs.updateSelected(_blogs.getCategory()[item]["name"]);
                    },
                  ),
                );
              }),
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}
