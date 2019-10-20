import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/register/register_button/register_with_google_button.dart';
import 'package:web/register/token/token.dart';
import 'package:web/utils/draw_line.dart';

class LoginButtonContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.37;
    final double width = MediaQuery.of(context).size.width * 0.35;

    final String imagePath = '/images/login/google_icon.png';

    return Container(
      height: height,
      width: width,
      color: Colors.transparent,
//      margin: margin,
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
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Zarejestruj się',
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
              Token(),
              RegisterWithGoogleButton(
                imagePath: imagePath,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
