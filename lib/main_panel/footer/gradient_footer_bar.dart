import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

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
                  onPressed: () => {},
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Informacje",
                    style: TextStyle(fontSize: 18, color: footerItemColor),
                  )),
              FlatButton(
                  onPressed: () => {},
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
