import 'package:flutter/cupertino.dart';
import 'package:web/create_presentation/forms/basic_data_form/title/class_title_form_state.dart';

class ClassTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String classTitle = "";
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
                'Tytul zajec',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ))),
          Container(
            alignment: Alignment.centerLeft,
            child: ClassTitleForm(),
          )
        ],
      ),
    );
  }
}

class ClassTitleForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ClassTitleFormState();
  }
}
