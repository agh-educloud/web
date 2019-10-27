import 'package:flutter/cupertino.dart';

import 'class_description_form_state.dart';

class ClassDescription extends StatelessWidget {

  final String topicToHint;

  const ClassDescription({Key key, this.topicToHint}) : super(key: key);

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
            child: ClassDescriptionForm(topicToHint: topicToHint,),
          )
        ],
      ),
    );
  }
}

class ClassDescriptionForm extends StatefulWidget {
  final String topicToHint;

  const ClassDescriptionForm({Key key, this.topicToHint}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ClassDescriptionFormState(topicToHint);
  }


}
