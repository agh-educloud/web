import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

class GradientAppBar extends StatelessWidget {
  final double barHeight;

  const GradientAppBar({Key key, this.barHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: barHeight,
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            colors: [new Color(0xffADA996), new Color(0xffeaeaea)],
            begin: const FractionalOffset(0.5, 0.5),
            end: const FractionalOffset(0.5, 1.5),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.cloud_queue, size: 30),
              FlatButton(
                onPressed: () => {},
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.flight_takeoff,
                      size: 17,
                    ),
                    Text(
                      "WYLOGUJ",
                      style: new TextStyle(fontSize: 10, color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
