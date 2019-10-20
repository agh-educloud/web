import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'create_presentation.dart';

class CreatePresentationSubmitButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CreatePresentationSubmitButtonState();
  }
}

class CreatePresentationSubmitButtonState extends State<CreatePresentationSubmitButton>{
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
          onPressed: () {
            // For now show info about grpc request
            // TODO send this to backend!
            _ackAlert(context);
          },
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

Future<void> _ackAlert(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Almost to send'),
        content: Text('Class name: ' + appData.className + '\nClass description: ' + appData.classDescription+ '\n 1st question name' + appData.quizQuestions.first.question),
        actions: <Widget>[
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}