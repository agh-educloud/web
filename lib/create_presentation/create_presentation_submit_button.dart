import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

class CreatePresentationSubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.05;
    final double width = MediaQuery.of(context).size.width * 0.18;

    EdgeInsets margin =
        EdgeInsets.only(left: (MediaQuery.of(context).size.width * 0.05));

    return Container(
      height: height,
      width: width,
      child: Container(
        margin: margin,
        child: FlatButton(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: 'Stworz prezentacje',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          onPressed: null,
        ),
        decoration: BoxDecoration(
          color: Color(0xffAFFF7D),
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0),
              bottomLeft: const Radius.circular(10.0),
              bottomRight: const Radius.circular(10.0)),
        ),
      ),
    );
  }
}
