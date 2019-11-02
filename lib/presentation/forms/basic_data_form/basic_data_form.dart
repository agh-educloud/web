import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/presentation/forms/basic_data_form/title/class_title.dart';
import 'package:web/presentation/forms/container/create_presentation_form_container.dart';

import 'description/class_description.dart';

class BasicDataForm extends StatefulWidget {
  final String nameToHint;
  final String topicToHint;

  const BasicDataForm({Key key, this.nameToHint, this.topicToHint}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return BasicDataFormState(nameToHint,topicToHint);
  }
}

class BasicDataFormState extends State<BasicDataForm> {

  final String nameToHint;
  final String topicToHint;

  BasicDataFormState(this.nameToHint, this.topicToHint);

  @override
  Widget build(BuildContext context) {
    return CreatePresentationFormContainer(
        title: "Podstawowe dane",
        height: MediaQuery.of(context).size.height * 0.25,
        child: Container(
            alignment: Alignment.topLeft,
            child: Column(
              children: <Widget>[ClassTitle(nameToHint: nameToHint,), ClassDescription(topicToHint: topicToHint,)],
            )));
  }

}



