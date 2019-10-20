import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawLine extends CustomPainter {
  Paint _paint;
  final Offset p1;
  final Offset p2;
  final Color color;

  DrawLine(this.p1, this.p2, this.color) {
    _paint = Paint()
      ..color = color
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(p1, p2, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
