import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:web/create_presentation/forms/basic_data_form/class_title_form_state.dart';
import 'package:web/create_presentation/forms/container/create_presentation_form_container.dart';

import 'class_description_form_state.dart';

class BasicDataForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CreatePresentationFormContainer(
        title: "Podstawowe dane",
        height: MediaQuery.of(context).size.height * 0.3,
        child: Container(
            child: Column(
          children: <Widget>[
            Text("Tytul zajec"),
            ClassTitleForm(),
            Text("Opis zajec"),
            ClassDescriptionForm(),
          ],
        )));
  }
}

class ClassDescriptionForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ClassDescriptionFormState();
  }
}

class ClassTitleForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ClassTitleFormState();
  }
}
