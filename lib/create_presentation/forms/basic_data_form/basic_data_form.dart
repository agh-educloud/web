import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:web/create_presentation/forms/basic_data_form/title/class_title.dart';
import 'package:web/create_presentation/forms/container/create_presentation_form_container.dart';

import 'description/class_description.dart';

class BasicDataForm extends StatelessWidget {
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



