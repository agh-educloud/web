// Create a corresponding State class.
// This class holds data related to the form.
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'class_description.dart';

class ClassDescriptionFormState extends State<ClassDescriptionForm> {
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // and allows validation of the form.
  //

  @override
  Widget build(BuildContext context) {

    // Build a Form widget using the _formKey created above.
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.15,
      color: Colors.white,
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: controller,
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
