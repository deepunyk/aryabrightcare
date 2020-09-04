import 'dart:convert';
import 'package:aryabrightcare/models/blog.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Blogs extends ChangeNotifier{
  List<Blog> _blogs = [];
  List<Map<String,dynamic>> _category=[];

  List<Blog> getBlogs() {
    List<Blog> _filterList=[];
    _blogs.map((e) {
      _category.map((f) {
        if(f["name"]==e.category){
          if(f["selected"]){
            _filterList.add(e);
          }
        }
      }).toList();
    }).toList();
    return _filterList.length==0?_blogs : _filterList;
  }
  Future<void> getData() async {
    _blogs.clear();
    _category.clear();
    final response = await http.get(
        "https://www.aryabrightcare.in/php/displayBlogPost.php");
    final data = json.decode(response.body);
    List blogData = data["posts"];
    blogData.map((e) {
      if(!_category.contains(e["category"])){
       _category.add({"name":e["category"],"selected":false});
      }
      _blogs.add(Blog(
          title: e["title"],
          category: e["category"],
          date: e["time"],
          description: e["body"],
          source: e["source"],
          img: e["img_url"]));
    }).toList();
    return ;
  }
   List<Map<String,dynamic>> getCategory(){
    return _category;
   }
   updateSelected(String name){
    _category.map((e) {
      if(e["name"]==name){
        e["selected"]=!e["selected"];
      }
    }).toList();
    notifyListeners();
   }
}