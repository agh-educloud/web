import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GradientFooterBar extends StatelessWidget {
  final double barHeight;
  final Color footerColor = const Color(0xffE5E5Ef);
  final Color footerItemColor = Colors.black54;

  const GradientFooterBar({Key key, this.barHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: barHeight,
        color: footerColor,
        child: Container(
          color: Colors.transparent,
          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                  onPressed: () => {
                    showDialog<void>(context: context,
                        barrierDismissible: false,
                        // user must tap button for close dialog!
                        builder: (BuildContext context) {
                          return AlertDialog(
                            actions: <Widget>[
                              FlatButton(
                                textColor: Colors.white,
                                child: Text('Powrót'),
                                color: Colors.black38,
                                onPressed: () {
                                  Navigator.of(context).pop(null);
                                },
                              ),
                            ],
                            content:
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Projekt stworzony w ramach Małopolskiej Chmury Edukacyjnej.\nWięcej informacji ',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: 'tutaj ',
                                    style: TextStyle(color: Colors.blue),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () { html.window.location.href = "https://e-chmura.malopolska.pl/"; },
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                    )
                  },
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Informacje",
                    style: TextStyle(fontSize: 18, color: footerItemColor),
                  )),
              FlatButton(
                  onPressed: () => {
                    showDialog<void>(context: context,
                        barrierDismissible: false,
                        // user must tap button for close dialog!
                        builder: (BuildContext context) {
                          return AlertDialog(
                            actions: <Widget>[
                              FlatButton(
                                textColor: Colors.white,
                                child: Text('Powrót'),
                                color: Colors.black38,
                                onPressed: () {
                                  Navigator.of(context).pop(null);
                                },
                              ),
                            ],
                            content:
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Kontakt do administratorów:\nE-mail:',
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            ),
//                            TextSpan("Projekt stworzony w ramach Małopolskiej Chmury Edukacyjnej.\n Więcej na "),
                          );
                        }
                    )
                  },
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Kontakt",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ))
            ],
          ),
        ));
  }
}
