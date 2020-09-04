import 'package:aryabrightcare/models/blogs.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class MobileBlogView extends StatefulWidget {
  @override
  _MobileBlogViewState createState() => _MobileBlogViewState();
}

class _MobileBlogViewState extends State<MobileBlogView> {
  Blogs _blogs;

  @override
  Widget build(BuildContext context) {
    _blogs=Provider.of<Blogs>(context);
    final _mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: _mediaQuery.width,
      height: _mediaQuery.height,
      child: ListView.builder(
          itemCount: _blogs.getBlogs().length,
          itemBuilder: (BuildContext context, int item) {
            return Expanded(
              child: Container(
                margin: const EdgeInsets.all(5),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        _blogs.getBlogs()[item].img,
                        fit: BoxFit.cover,
                        height: _mediaQuery.height * 0.4,
                        width: double.infinity,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Theme(
                      data: Theme.of(context).copyWith(accentColor: Theme.of(context).primaryColor),
                      child: ExpansionTile(
                        title:Padding(
                          padding:  EdgeInsets.all(_mediaQuery.width*0.01),
                          child: AutoSizeText(
                            _blogs.getBlogs()[item].title,
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.start,
                            maxLines: 1,
                          ),
                        ),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(_mediaQuery.width*0.02),
                            child: AutoSizeText(
                              _blogs.getBlogs()[item].description,
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AutoSizeText(
                          "Category: ${_blogs.getBlogs()[item].category}",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          maxFontSize: 15,
                          minFontSize: 10,
                        ),
                        AutoSizeText(
                          "Source: ${_blogs.getBlogs()[item].source}",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          maxFontSize: 15,
                          minFontSize: 10,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
