import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

import 'gradient_app_bar.dart';
import 'gradient_footer_bar.dart';

class MainPanel extends StatelessWidget {
  MainPanel({Key key}) : super(key: key);

  final double barHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(barHeight),
          child: AppBar(
            flexibleSpace: GradientAppBar(),
          )),
      body: MainPanelBody(),
      bottomNavigationBar: new BottomAppBar(
        child: GradientFooterBar(),
      ),
    );
  }
}

class MainPanelBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100.0,
              width: 200.0,
              color: Colors.transparent,
              child: new Container(
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                    colors: [new Color(0xffADA996), new Color(0xffeaeaea)],
                    begin: const FractionalOffset(0.5, 0.5),
                    end: const FractionalOffset(0.5, 1.5),
                  ),
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0),
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0)),
                ),
//
                child: new FlatButton(
                  color: Colors.transparent,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text("BLABLA"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CustomPaint(painter: Drawhorizontalline()),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                  onPressed: null,
                ),
              ),
            ),
            ButtonTheme(
              minWidth: 200.0,
              height: 100.0,
              child: new RaisedButton(
                  child: new Text("Press Me"),
                  onPressed: null,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0))),
            ),
            ButtonTheme(
              minWidth: 200.0,
              height: 100.0,
              child: new RaisedButton(
                  child: new Text("Press Me"),
                  onPressed: null,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0))),
            ),
          ]),
    );
  }
}

class Drawhorizontalline extends CustomPainter {
  Paint _paint;

  Drawhorizontalline() {
    _paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(-90.0, 0.0), Offset(90.0, 0.0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
