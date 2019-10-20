// Create a corresponding State class.
// This class holds data related to the form.
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'class_title.dart';

class ClassTitleFormState extends State<ClassTitleForm> {
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  static final _formKey = GlobalKey<FormState>();
  final controller = TextEditingController();

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
