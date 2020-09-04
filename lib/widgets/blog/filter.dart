import 'package:aryabrightcare/models/blogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
class FilterBar extends StatefulWidget {
  @override
  _FilterBarState createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  Blogs _blogs;
  @override
  Widget build(BuildContext context) {
    _blogs=Provider.of<Blogs>(context);
    final _mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: _mediaQuery.width*0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text("Filter by Category",textAlign: TextAlign.center,style: TextStyle(color:Theme.of(context).accentColor),),
          ),
          Container(
            height: _mediaQuery.height*0.6,
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
      ),
    );
  }
}
