import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/utils/draw_line.dart';

class RegisterWithGoogleButton extends StatelessWidget {
  final String imagePath;

  const RegisterWithGoogleButton({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.11;
    final double width = MediaQuery.of(context).size.width * 0.28;

    EdgeInsets margin =
        EdgeInsets.only(top: (MediaQuery.of(context).size.height * 0.055));
    return Container(
      height: height,
      width: width,
      child: Container(
        margin: margin,
        child: FlatButton(
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: width * 0.03),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
              CustomPaint(
                  painter: DrawLine(Offset(0, height / 4),
                      Offset(0, -height / 4), Colors.black)),
              Padding(
                padding: EdgeInsets.only(left: width * 0.06),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Zarejestruj się przy pomocy konta Google',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              color: Colors.black.withOpacity(0.6))),
                    ],
                  ),
                ),
              ),
            ],
          ),
          onPressed: null,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(const Radius.circular(10.0)),
        ),
      ),
    );
  }
}
