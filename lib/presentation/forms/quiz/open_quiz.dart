import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/common_data.dart';
import 'package:web/generated/class.pb.dart';

Future<RestQuizQuestion> waitForQuizQuestion(BuildContext context) async {
  final questionController = TextEditingController();

  return showDialog<RestQuizQuestion>(
      context: context,
      barrierDismissible: false, // user must tap button for close dialog!
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(left: 50.0, right: 50.0),
          child: AlertDialog(
            elevation: 0.0,
            backgroundColor: Colors.white,
            content: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.3,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.2,
              child: Form(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        controller: questionController,
                        decoration: InputDecoration(
                          icon: Icon(Icons.question_answer),
                          hintText: ' Wpisz pytanie',
                          labelText: 'Pytanie',
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                              textColor: Colors.white,
                              color: Colors.green,
                              child: Text("Dodaj"),
                              onPressed: () {
                                String question = questionController.text
                                    .toString();
                                if (question.isEmpty) {
                                  showDialog<void>(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          actions: <Widget>[
                                            FlatButton(
                                              textColor: Colors.white,
                                              child: Text('Powrót'),
                                              color: Colors.black38,
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                          content: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                  'Pytanie musi zawierać nazwę!',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                } else {
                                  createClass(questionController, context);
                                }
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                              textColor: Colors.white,
                              color: Colors.black38,
                              child: Text("Anuluj"),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      });
}

Future<RestQuizQuestion> waitForQuizQuestionEdit(BuildContext context,
    RestQuizQuestion questionToEdit) async {
  final questionController = TextEditingController();

  return showDialog<RestQuizQuestion>(
      context: context,
      barrierDismissible: false, // user must tap button for close dialog!
      builder: (BuildContext context) {
        return Padding(
            padding: EdgeInsets.only(left: 50.0, right: 50.0),
            child: AlertDialog(
                elevation: 0.0,
                backgroundColor: Colors.white,
                content: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.3,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.75,
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            controller: questionController,
                            decoration: InputDecoration(
                              icon: Icon(Icons.question_answer),
                              labelText: (questionToEdit == null)
                                  ? 'Pytanie'
                                  : questionToEdit.question,
                              hintText: ' Wpisz pytanie',
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                  color: Colors.green,
                                  textColor: Colors.white,
                                  child: Text("Edytuj"),
                                  onPressed: () {
                                    editClass(
                                        questionController,
                                        context,
                                        questionToEdit);
                                  }),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                  textColor: Colors.white,
                                  color: Colors.black38,
                                  child: Text("Anuluj"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )));
      });
}

void createClass(TextEditingController questionController,
    BuildContext context) {
  var question = RestQuizQuestion();
  question..question = questionController.text;

  Navigator.pop(context, question);
}

void editClass(TextEditingController questionController,
    BuildContext context,
    RestQuizQuestion earlierQuestion) {
  var question = RestQuizQuestion();
  question
    ..question = questionController.text.isEmpty
        ? earlierQuestion.question
        : questionController.text;

  Navigator.pop(context, question);
}

Future<RestQuizQuestion> getQuizesOptions(BuildContext context) async {
  return await showDialog<RestQuizQuestion>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return getQuizQuestions(context);
      });
}

AlertDialog getQuizQuestions(BuildContext context) {
  debugPrint('IN');
  RestQuizQuestion choosenQuiz;
  return AlertDialog(
    content: Container(
        height: MediaQuery
            .of(context)
            .size
            .height * 0.08,
        width: MediaQuery
            .of(context)
            .size
            .width * 0.3,
        child: DropdownButton<RestQuizQuestion>(
          items: appData.openQuizQuestions
              .map(
                  (RestQuizQuestion quiz) =>
                  DropdownMenuItem<RestQuizQuestion>(
                    value: quiz,
                    child: Text(
                        (quiz.question == null || quiz.question.isEmpty)
                            ? "Brak nazwy"
                            : quiz.question),
                  ))
              .toList(),
          value: choosenQuiz,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.black),
          underline: Container(
            height: 2,
            color: Colors.black54,
          ),
          onChanged: (quiz) {
            choosenQuiz = quiz;
          },
        )),
    actions: <Widget>[
      FlatButton(
        textColor: Colors.white,
        child: Text('Edytuj'),
        color: Colors.green,
        onPressed: () {
          action.edit = true;
          Navigator.of(context).pop(choosenQuiz);
        },
      ),
      FlatButton(
        textColor: Colors.white,
        color: Colors.red,
        child: Text('Usuń'),
        onPressed: () {
          action.delete = true;
          Navigator.of(context).pop(choosenQuiz);
        },
      ),
      FlatButton(
        textColor: Colors.white,
        color: Colors.black38,
        child: Text('Anuluj'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      )
    ],
  );
}

class EditData {
  static final EditData _edit = EditData._internal();

  bool edit = false;
  bool delete = false;

  factory EditData() {
    return _edit;
  }

  EditData._internal();
}

final action = EditData();
