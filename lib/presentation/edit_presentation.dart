import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/generated/class.pb.dart';
import 'package:web/service/class.dart';
import 'package:web/utils/draw_line.dart';

import 'create_presentation.dart';

class EditPanelButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final String imagePath;

  const EditPanelButton({Key key,
    this.height,
    this.width,
    this.text,
    this.imagePath,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: Colors.transparent,
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
        child: FlatButton(
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomPaint(
                    painter: DrawLine(Offset(width / 2, 0.0),
                        Offset(-width / 2, 0.0), Colors.white)),
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                  )),
            ],
          ),
          onPressed: () async {
            await getPresentationsOptions(context).then((Class p) => {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreatePresentationPanel(classToHint: p)))
            });
          },
        ),
      ),
    );
  }
}

Future<Class> getPresentationsOptions(BuildContext context) async {
  var list = await ClassService().getClasses();
  var chosenClass;
  return showDialog<Class>(
      context: context,
      barrierDismissible: false, // user must tap button for close dialog!
      builder: (BuildContext context) {
        return AlertDialog(
          actions: <Widget>[
            FlatButton(
              textColor: Colors.white,
              child: Text('Edytuj'),
              color: Colors.green,
              onPressed: () {
                return Navigator.of(context).pop(chosenClass);
              },
            ),
            FlatButton(
              textColor: Colors.white,
              child: Text('Anuluj'),
              color: Colors.black38,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
          content: DropdownButton<Class>(
            items: list.map((Class presentation) =>
                DropdownMenuItem<Class>(
                  value: presentation,
                  child: Text(presentation.name),
                )).toList(),
            iconSize: 24,
            value: chosenClass,
            elevation: 16,
            style: TextStyle(color: Colors.black),
            underline: Container(
              height: 2,
              color: Colors.black54,
            ),
            onChanged: (value) {
              chosenClass = value;
            },
          ),
        );
      });
}

