import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Partners extends StatefulWidget {
  @override
  _PartnersState createState() => _PartnersState();
}

class _PartnersState extends State<Partners> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;

    Widget _getDoc(String img, String name, String desig){
      return Container(
        width: _mediaQuery.width*0.25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Color(0x60fb5d60),
              spreadRadius: 1,
              blurRadius: 5
            )
          ]
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: _mediaQuery.height*0.05),
          child: Column(
            children: [
              Container(
                height:_mediaQuery.height*0.15,
                width:_mediaQuery.height*0.15,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Theme.of(context).accentColor, width: 1)
                ),
                child: ClipOval(
                  child: Image.asset(img, height: _mediaQuery.height*0.15,fit: BoxFit.fitHeight,),
                ),
              ),
              SizedBox(height: _mediaQuery.height*0.01,),
              Text(name, style: GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),),
              Text(desig,style: GoogleFonts.roboto(color: Colors.black87, fontWeight: FontWeight.w400, fontSize: 16),),
            ],
          ),
        ),
      );
    }

    return Container(
      height: _mediaQuery.height * 0.6,
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(height: _mediaQuery.height*0.05,),
                Text("Our Governing Board", style: GoogleFonts.roboto(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w500, fontSize: 40),),
                SizedBox(height: _mediaQuery.height*0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _getDoc('assets/images/doc_chin.jpeg','Dr. Chinmaya Urs R','Founder, CEO'),
                    _getDoc('assets/images/doc_abi.jpeg','Dr. A B Shetty','Co-founder, Managing Director'),
                    _getDoc('assets/images/doc_shar.jpeg','Dr. Sharath Chandra','Co-founder, Medical Director')
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
