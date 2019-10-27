import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'class_title_form_state.dart';

class ClassTitle extends StatelessWidget {
  final String nameToHint;

  const ClassTitle({Key key, this.nameToHint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EdgeInsets margin = EdgeInsets.only(
        left: (MediaQuery.of(context).size.width * 0.01),
        top: (MediaQuery.of(context).size.height * 0.02));

    return Container(
      margin: margin,
      child: Column(
        children: <Widget>[
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  child: Text(
                'Tytul zajec ',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ))),
          Container(
            alignment: Alignment.centerLeft,
            child: ClassTitleForm(nameToHint: nameToHint,),
          )
        ],
      ),
    );
  }
}

class ClassTitleForm extends StatefulWidget {
  final String nameToHint;

  const ClassTitleForm({Key key, this.nameToHint}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ClassTitleFormState(nameToHint);
  }
}
