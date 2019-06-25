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

  final double buttonHeight = 268.0;
  final double buttonWidth = 369.0;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MainPanelButton(
                height: buttonHeight,
                width: buttonWidth,
                text: 'Stwórz prezentacje',
                imagePath: '/images/main_panel/create_presentation.png'),
            MainPanelButton(
                height: buttonHeight,
                width: buttonWidth,
                text: 'Rozpocznij prezentacje',
                imagePath: '/images/main_panel/start_presentation.png'),
            MainPanelButton(
                height: buttonHeight,
                width: buttonWidth,
                text: 'Historia Prezentacji',
                imagePath: '/images/main_panel/presentations_history.png'),
          ]),
    );
  }
}

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
        child: new FlatButton(
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(text, style: TextStyle(fontSize: 26, color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomPaint(painter: DrawHorizontalLine()),
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                  )),
            ],
          ),
          onPressed: null,
        ),
      ),
    );
  }
}

class DrawHorizontalLine extends CustomPainter {
  Paint _paint;

  DrawHorizontalLine() {
    _paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(-184.5, 0.0), Offset(184.5, 0.0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
