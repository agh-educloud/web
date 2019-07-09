import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:web/utils/draw_horizontal_line.dart';

import 'footer/gradient_footer_bar.dart';

class LoginPanel extends StatelessWidget {
  LoginPanel({Key key}) : super(key: key);

  final double barHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPanelBody(),
      bottomNavigationBar: BottomAppBar(
        child: GradientFooterBar(),
      ),
    );
  }
}

class LoginPanelBody extends StatelessWidget {
  final Color gradientStartColor = const Color(0xffffffff);
  final Color gradientEndColor = const Color(0xffE5E5E5);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[Header(), LoginButtonContainer()],
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [gradientStartColor, gradientEndColor],
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
      )),
    );
  }
}

class LoginButtonContainer extends StatelessWidget {
  final double height = 300;
  final double width = 500;

  String imagePath = '/images/login/google_icon.png';

  @override
  Widget build(BuildContext context) {
    EdgeInsets margin =
        EdgeInsets.only(top: (MediaQuery.of(context).size.height * 0.05));

    return Container(
      height: height,
      width: width,
//      alignment: Alignment.center,
      margin: margin,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff3E5151), Color(0xffDECBA4)],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(10.0),
            topRight: const Radius.circular(10.0),
            bottomLeft: const Radius.circular(10.0),
            bottomRight: const Radius.circular(10.0)),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Zaloguj się',
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
//        onPressed: () {
//          Navigator.push(
//              context,
//              MaterialPageRoute(
//                  builder: (context) => CreatePresentationPanel()));
//        },
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    EdgeInsets margin =
        EdgeInsets.only(top: (MediaQuery.of(context).size.height * 0.02));

    return Container(
      margin: margin,
      child: Text(
        'MAŁOPOLSKA CHMURA EDUKACYJNA',
        style: TextStyle(
            color: Color(0xff000C40).withOpacity(0.7),
            fontWeight: FontWeight.bold,
            fontSize: 40),
        textAlign: TextAlign.center,
      ),
    );
  }
}
