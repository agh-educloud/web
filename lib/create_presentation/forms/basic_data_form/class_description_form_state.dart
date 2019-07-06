// Create a corresponding State class.
// This class holds data related to the form.
import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

import 'basic_data_form.dart';

class ClassDescriptionFormState extends State<ClassDescriptionForm> {
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  // and allows validation of the form.
  //

  @override
  Widget build(BuildContext context) {
    EdgeInsets margin =
        EdgeInsets.only(left: (MediaQuery.of(context).size.width * 0.01));

    // Build a Form widget using the _formKey created above.
    return Container(
      margin: margin,
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.15,
      color: Colors.white,
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Wpisz tutaj';
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
