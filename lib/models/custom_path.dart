import 'dart:math';

import 'package:flutter/material.dart';

class CustomPath extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill
      ..strokeWidth = 8.0;

    Path path = Path();
    path.moveTo(0, size.height *0.4);
    path.quadraticBezierTo(0, size.height, size.width*0.6, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPath oldDelegate) => false;
}