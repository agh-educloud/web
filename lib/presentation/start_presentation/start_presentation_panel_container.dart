import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartPresentationPanelContainer extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final StatelessWidget body;

  const StartPresentationPanelContainer(
      {Key key,
        this.height,
        this.width,
        this.text, this.body,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    EdgeInsets margin =
    EdgeInsets.only(left: (width * 0.05), right: (width * 0.05), bottom: height * 0.03);

    return Container(
      height: height,
      width: width,
      child: Column(
        children: <Widget>[
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: margin,
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
                  )
              )),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffC4C4C4).withOpacity(0.25),
            ),
            alignment: Alignment.centerLeft,
            height: height * 0.9,
            width: width * 0.9,
            child: body,
          ),
        ],
      ),
    );
  }
}