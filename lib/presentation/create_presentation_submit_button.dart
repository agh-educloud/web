import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/service/class.dart';

import 'create_presentation.dart';

class CreatePresentationSubmitButton extends StatefulWidget {
  final bool update;

  const CreatePresentationSubmitButton({Key key, this.update}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CreatePresentationSubmitButtonState(update);
  }
}

class CreatePresentationSubmitButtonState extends State<CreatePresentationSubmitButton>{
  final bool update;

  CreatePresentationSubmitButtonState(this.update);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.05;
    final double width = MediaQuery.of(context).size.width * 0.18;

    EdgeInsets margin =
    EdgeInsets.only(left: (MediaQuery.of(context).size.width * 0.05));

    return Container(
      height: height,
      width: width,
      child: Container(
        margin: margin,
        child: FlatButton(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: update ? 'Edytuj prezentacje' : 'Stwórz prezentacje',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          onPressed: () async {
            if(update){
//              await ClassService().updateClass(appData.className, appData.classDescription, appData.quizQuestions, appData.presentationBytes);
            }else{
              await ClassService().createClass(appData.className, appData.classDescription, appData.quizQuestions, appData.presentationBytes);
            }
          },
        ),
        decoration: BoxDecoration(
          color: Color(0xffAFFF7D),
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0),
              bottomLeft: const Radius.circular(10.0),
              bottomRight: const Radius.circular(10.0)),
        ),
      ),
    );
  }
}