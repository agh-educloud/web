import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/create_presentation/forms/quiz/quiz.dart';
import 'package:web/generated/quiz.pb.dart';
import 'package:web/generated/quiz.pbgrpc.dart';

import '../create_presentation.dart';
import 'container/create_presentation_form_container.dart';

class PresentationAssigmentFormButton extends StatefulWidget {
  @override
  createState() => PresentationAssigmentFormButtonStateful();
}

class PresentationAssigmentFormButtonStateful
    extends State<PresentationAssigmentFormButton> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.2;
    final double width = MediaQuery.of(context).size.width * 0.18;
    final EdgeInsets margin =
        EdgeInsets.only(left: (MediaQuery.of(context).size.width * 0.01));

    return CreatePresentationFormContainer(
        height: height,
        title: "Pytania do prezentacji",
        child: Container(
            height: height * 0.9,
            width: width * 0.9,
            margin: margin,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: width * 0.9,
                  height: height * (0.9 * 0.35),
                  child: OutlineButton(
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 12.5,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Kliknij aby dodac pytanie',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    textColor: Colors.black,
                    onPressed: () {
                      setState(() async {
                        QuizQuestion question =
                            await waitForQuizQuestion(context);
                        appData.quizQuestions.add(question);
                      });
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xfffFFfff),
                  ),
                ),
                Container(
                  width: width * 0.9,
                  height: height * (0.9 * 0.35),
                  child: OutlineButton(
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 12.5,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Kliknij aby edytować pytanie',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    textColor: Colors.black,
                    onPressed: () {
                      setState(() async {
                        if (appData.quizQuestions.isNotEmpty) {
                          QuizQuestion questionToEditOrRemove = await getQuizesOptions(context);
                          if(editAction.edit) {
                            QuizQuestion editedQuestion = await waitForQuizQuestionEdit(context, questionToEditOrRemove);
                            if(editedQuestion != null){
                              appData.quizQuestions.remove(questionToEditOrRemove);
                              appData.quizQuestions.add(editedQuestion);
                            }
                            editAction.edit = false;
                          }else if(editAction.delete){
                            appData.quizQuestions.remove(questionToEditOrRemove);
                            editAction.delete = false;
                          }
                        }
                      });
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xfffFFfff),
                  ),
                ),
              ],
            )));
  }
}
