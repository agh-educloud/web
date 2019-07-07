import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:web/create_presentation/create_presentation.dart';

class MainPanelButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final String imagePath;

  const MainPanelButton(
      {Key key, this.height, this.width, this.text, this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ Color(0xff3E5151), Color(0xffDECBA4)],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
          ),
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0),
              bottomLeft: const Radius.circular(10.0),
              bottomRight: const Radius.circular(10.0)),
        ),
        child: FlatButton(
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomPaint(painter: DrawHorizontalLine(width)),
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                  )),
            ],
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreatePresentationPanel()));
          },
        ),
      ),
    );
  }
}

class DrawHorizontalLine extends CustomPainter {
  Paint _paint;
  final double width;

  DrawHorizontalLine(this.width) {
    _paint = Paint()
      ..color = Colors.white
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
