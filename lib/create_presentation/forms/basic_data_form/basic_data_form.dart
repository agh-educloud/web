import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/create_presentation/forms/basic_data_form/title/class_title.dart';
import 'package:web/create_presentation/forms/container/create_presentation_form_container.dart';

import 'description/class_description.dart';

class BasicDataForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BasicDataFormState();
  }
}

class BasicDataFormState extends State<BasicDataForm> {

  @override
  Widget build(BuildContext context) {
    return CreatePresentationFormContainer(
        title: "Podstawowe dane",
        height: MediaQuery.of(context).size.height * 0.3,
        child: Container(
            alignment: Alignment.topLeft,
            child: Column(
              children: <Widget>[ClassTitle(), ClassDescription()],
            )));
  }

}



