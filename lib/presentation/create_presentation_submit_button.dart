import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/service/class.dart';

import 'create_presentation.dart';

class CreatePresentationSubmitButton extends StatefulWidget {
  final int classUuid;

  const CreatePresentationSubmitButton({Key key, this.classUuid}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CreatePresentationSubmitButtonState(classUuid);
  }
}

class CreatePresentationSubmitButtonState extends State<CreatePresentationSubmitButton>{
  final int classUuid;

  CreatePresentationSubmitButtonState(this.classUuid);

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
                    text:  classUuid != null ? 'Edytuj prezentacje' : 'Stwórz prezentacje',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          onPressed: () async {
            if(classUuid != null){
              await ClassService().updateClass(classUuid, appData.className, appData.classDescription, appData.quizQuestions);
              appData.flush();
              Navigator.pop(context);
            }else{
              await ClassService().createClass(appData.className, appData.classDescription, appData.quizQuestions, appData.presentationBytes);
              appData.flush();
              Navigator.pop(context);
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