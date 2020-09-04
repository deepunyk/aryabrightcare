import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatefulWidget {
  final String title;
  final Function onclick;

  CustomButton(this.title, this.onclick);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
        color: Theme.of(context).primaryColor,
      ),
      child: ClipRRect(borderRadius: BorderRadius.only(
          topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){
            widget.onclick();
          },
          hoverColor: Color(0x1affffff),
          child: Padding(padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),child: Text(widget.title,style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500),),),
        ),
      ),),
    );
  }
}
