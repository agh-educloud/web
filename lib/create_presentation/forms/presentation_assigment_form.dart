import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/generated/quiz.pb.dart';
import 'package:web/generated/quiz.pbgrpc.dart';

import 'container/create_presentation_form_container.dart';

class PresentationAssigmentForm extends StatelessWidget {
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
    final EdgeInsets margin =
    EdgeInsets.only(left: (MediaQuery
        .of(context)
        .size
        .width * 0.01));

    return CreatePresentationFormContainer(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.1,
      title: "Pytania do prezentacji",
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        margin: margin,
        child: PresentationAssigmentFormButton(),
        decoration: BoxDecoration(
          color: Color(0xfffFFfff),
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

class PresentationAssigmentFormButton extends StatefulWidget {
  @override
  createState() => PresentationAssigmentFormButtonStateful();
}

class PresentationAssigmentFormButtonStateful
    extends State<PresentationAssigmentFormButton> {
  final questionController = TextEditingController();
  final aOptionController = TextEditingController();
  final bOptionController = TextEditingController();
  final cOptionController = TextEditingController();
  final dOptionController = TextEditingController();
  final rightOptionController = TextEditingController();

  List<QuizQuestion> quizQuestions;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    questionController.dispose();
    aOptionController.dispose();
    bOptionController.dispose();
    cOptionController.dispose();
    dOptionController.dispose();
    rightOptionController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(
            fontSize: 12.5,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
                text: "add question like before - " + questionController.text,
                style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Form(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          controller: questionController,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.question_answer),
                            hintText: 'Type question formula',
                            labelText: 'Question',
                          ),
                          onChanged: (text) {
                            print("text = $text");
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                            onChanged: (text) {
                              print("First text field: $text");
                            },
                            controller: aOptionController,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.create),
                              hintText: 'Type A formula',
                              labelText: 'A',
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                            controller: bOptionController,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.create),
                              hintText: 'Type B formula',
                              labelText: 'B',
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                            controller: cOptionController,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.create),
                              hintText: 'Type C formula',
                              labelText: 'C',
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                            controller: dOptionController,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.create),
                              hintText: 'Type D formula',
                              labelText: 'D',
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                            controller: rightOptionController,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.question_answer),
                              hintText: 'Type A,B,C or D',
                              labelText: 'Right Answer',
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                            child: Text("Add"),
                            onPressed: () {
                              debugPrint('Helo');
                              debugPrint('Helo' + questionController.text);
                              var options = [Option()
                                ..value = aOptionController.text,
                                Option()
                                  ..value = bOptionController.text,
                                Option()
                                  ..value = cOptionController.text,
                                Option()
                                  ..value = dOptionController.text
                              ];
                              var rightAnswer = rightOptionController.text;
                              var question = QuizQuestion();
                              question..question = questionController.text;
                              question..uuid = 1;
                              question..option.addAll(options);
                              quizQuestions.add(question);

                              debugPrint('added question with q: ${question
                                  .question}');
                              Navigator.of(context).pop();
                            }),
                      )
                    ],
                  ),
                ),
              );
            });
      },
    );
  }
}

