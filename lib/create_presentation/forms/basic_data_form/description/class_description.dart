import 'package:flutter/cupertino.dart';

import 'class_description_form_state.dart';

class ClassDescription extends StatelessWidget {
  String classDescription = "";

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
                'Tematyka zajec',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ))),
          Container(
            alignment: Alignment.centerLeft,
            child: ClassDescriptionForm(),
          )
        ],
      ),
    );
  }
}

class ClassDescriptionForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ClassDescriptionFormState();
  }
}
