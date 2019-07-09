import 'package:flutter_web/cupertino.dart';

class DrawHorizontalLine extends CustomPainter {
  Paint _paint;
  final double width;

  DrawHorizontalLine(this.width) {
    _paint = Paint()
      ..color = Color(0xfffffff)
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(width / 2, 0.0), Offset(width / 2, 0.0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
