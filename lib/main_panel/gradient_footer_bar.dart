import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

class GradientFooterBar extends StatelessWidget {
  final double barHeight;

  const GradientFooterBar({Key key, this.barHeight}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                  onPressed: () => {},
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Informacje",
                    style: new TextStyle(fontSize: 18, color: Colors.white),
                  )),
              FlatButton(
                  onPressed: () => {},
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Kontakt",
                    style: new TextStyle(fontSize: 18, color: Colors.white),
                  ))
            ],
          ),
        ));
  }
}
