import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'container/create_presentation_form_container.dart';

class PresentationFileForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PresentationFileFormState();
  }
}

class PresentationFileFormState extends State<PresentationFileForm> {
  @override
  Widget build(BuildContext context) {
    return CreatePresentationFormContainer(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.1,
      title: "Plik prezentacji",
      child: PresentationFileFormButton(),
    );
  }
}

class PresentationFileFormButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery
        .of(context)
        .size
        .height * 0.05;
    final double width = MediaQuery
        .of(context)
        .size
        .width * 0.15;

    EdgeInsets margin =
    EdgeInsets.only(left: (MediaQuery
        .of(context)
        .size
        .width * 0.01));

    return Container(
      height: height,
      width: width,
      margin: margin,
      child: FlatButton(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(
              fontSize: 12.5,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: 'Kliknij aby dodać prezentację',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Color(0xfffFFfff),
        borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(10.0),
            topRight: const Radius.circular(10.0),
            bottomLeft: const Radius.circular(10.0),
            bottomRight: const Radius.circular(10.0)),
      ),
    );
  }
}