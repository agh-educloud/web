import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:web/register/register_panel.dart';
import 'package:web/utils/draw_line.dart';

import 'login_button.dart';

class LoginButtonContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.37;
    final double width = MediaQuery.of(context).size.width * 0.35;

    final String imagePath = 'google_icon.png';

    return Container(
      height: height,
      width: width,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff3E5151), Color(0xffDECBA4)],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            ),
            borderRadius: BorderRadius.all(
              const Radius.circular(10.0),
            )),
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Zaloguj się',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white.withOpacity(0.8),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomPaint(
                  painter: DrawLine(Offset(width / 2, 0.0),
                      Offset(-width / 2, 0.0), Colors.white),
                ),
              ),
              LoginWithGoogleButton(imagePath: imagePath),
              RegisterRedirectButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterRedirectButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.1;
    final double width = MediaQuery.of(context).size.width * 0.18;

    EdgeInsets margin =
        EdgeInsets.only(top: (MediaQuery.of(context).size.height * 0.07));

    return Container(
      height: height,
      width: width,
      child: Container(
        margin: margin,
        child: FlatButton(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: 'Nie masz konta? Zarejestruj się',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                        color: Colors.black.withOpacity(0.6))),
              ],
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterPanel()),
            );
          },
        ),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.all(const Radius.circular(10.0)),
        ),
      ),
    );
  }
}
