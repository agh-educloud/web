import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  final double barHeight;
  final Color gradientStartColor = const Color(0xffADA996);
  final Color gradientEndColor = const Color(0xffeaeaea);

  const GradientAppBar({Key key, this.barHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: barHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.cloud_queue,
                size: 35,
                color: Colors.white70,
              ),
              FlatButton(
                onPressed: () => {},
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.flight_takeoff,
                      color: Colors.white,
                      size: 17,
                    ),
                    Text(
                      "WYLOGUJ",
                      style: TextStyle(fontSize: 11, color: Colors.black54),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
