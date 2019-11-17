import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/generated/class.pb.dart';

import '../../create_presentation.dart';

Future<RestQuizQuestion> waitForQuizQuestion(BuildContext context) async {
  final questionController = TextEditingController();
  final aOptionController = TextEditingController();
  final bOptionController = TextEditingController();
  final cOptionController = TextEditingController();
  final dOptionController = TextEditingController();
  final rightOptionController = TextEditingController();

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
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.75,
              child: Form(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        controller: questionController,
                        decoration: InputDecoration(
                          icon: Icon(Icons.question_answer),
                          hintText: 'Wpisz pytanie',
                          labelText: 'Pytanie',
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
                          decoration: InputDecoration(
                            icon: Icon(Icons.create),
                            hintText: 'Formuła dla A',
                            labelText: 'A',
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextFormField(
                          controller: bOptionController,
                          decoration: InputDecoration(
                            icon: Icon(Icons.create),
                            hintText: 'Formuła dla B',
                            labelText: 'B',
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextFormField(
                          controller: cOptionController,
                          decoration: InputDecoration(
                            icon: Icon(Icons.create),
                            hintText: 'Formuła dla C',
                            labelText: 'C',
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextFormField(
                          controller: dOptionController,
                          decoration: InputDecoration(
                            icon: Icon(Icons.create),
                            hintText: 'Formuła dla D',
                            labelText: 'D',
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextFormField(
                          controller: rightOptionController,
                          decoration: InputDecoration(
                            icon: Icon(Icons.question_answer),
                            hintText: 'Wpisz A,B,C lub D',
                            labelText: 'Prawidłowa odpowiedź',
                          )),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                              textColor: Colors.white,
                              color:Colors.green,
                              child: Text("Dodaj"),
                              onPressed: () {
                                createClass(
                                    aOptionController,
                                    bOptionController,
                                    cOptionController,
                                    dOptionController,
                                    rightOptionController,
                                    questionController,
                                    context);
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

Future<RestQuizQuestion> waitForQuizQuestionEdit(BuildContext context, RestQuizQuestion questionToEdit) async {
  final questionController = TextEditingController();
  final aOptionController = TextEditingController();
  final bOptionController = TextEditingController();
  final cOptionController = TextEditingController();
  final dOptionController = TextEditingController();
  final rightOptionController = TextEditingController();

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
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.75,
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
                              hintText: 'Wpisz pytanie',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                              onChanged: (text) {
                                print("First text field: $text");
                              },
                              controller: aOptionController,
                              decoration: InputDecoration(
                                icon: Icon(Icons.create),
                                labelText: questionToEdit == null || questionToEdit.option.isEmpty
                                    ? 'A'
                                    : questionToEdit.option[0].value.toString(),
                                hintText: 'Formuła dla A',
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextFormField(
                              controller: bOptionController,
                              decoration: InputDecoration(
                                icon: Icon(Icons.create),
                                labelText: questionToEdit == null || questionToEdit.option.length < 2
                                    ? 'B'
                                    : questionToEdit.option[1].value.toString(),
                                hintText: 'Formuła dla B',
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextFormField(
                              controller: cOptionController,
                              decoration: InputDecoration(
                                icon: Icon(Icons.create),
                                labelText: questionToEdit == null || questionToEdit.option.length < 3
                                    ? 'C'
                                    : questionToEdit.option[2].value.toString(),
                                hintText: 'Formuła dla C',
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextFormField(
                              controller: dOptionController,
                              decoration: InputDecoration(
                                icon: Icon(Icons.create),
                                labelText: questionToEdit == null || questionToEdit.option.length < 4
                                    ? 'D'
                                    : questionToEdit.option[3].value.toString(),
                                hintText: 'Formuła dla D',
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextFormField(
                              controller: rightOptionController,
                              decoration: InputDecoration(
                                icon: Icon(Icons.question_answer),
                                //TODO
                                labelText: questionToEdit == null || questionToEdit.answer == null
                                    ? 'Prawidłowa odpowiedź'
                                    : questionToEdit.answer.value,
                                hintText: 'Wpisz A,B,C lub D',
                              )),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                  color:Colors.green,
                                  textColor: Colors.white,
                                  child: Text("Edytuj"),
                                  onPressed: () {
                                    editClass(
                                        aOptionController,
                                        bOptionController,
                                        cOptionController,
                                        dOptionController,
                                        rightOptionController,
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
void createClass(
    TextEditingController aOptionController,
    TextEditingController bOptionController,
    TextEditingController cOptionController,
    TextEditingController dOptionController,
    TextEditingController rightOptionController,
    TextEditingController questionController,
    BuildContext context) {
  var options = [
    RestOption()..value = aOptionController.text,
    RestOption()..value = bOptionController.text,
    RestOption()..value = cOptionController.text,
    RestOption()..value = dOptionController.text
  ];
  var rightAnswer = RestOption()..value = rightOptionController.text;
  var question = RestQuizQuestion();
  question..answer = rightAnswer;
  question..question = questionController.text;
  question..option.addAll(options);

  Navigator.pop(context, question);
}

void editClass(
    TextEditingController aOptionController,
    TextEditingController bOptionController,
    TextEditingController cOptionController,
    TextEditingController dOptionController,
    TextEditingController rightOptionController,
    TextEditingController questionController,
    BuildContext context,
    RestQuizQuestion earlierQuestion) {
  var options = [
    RestOption()
      ..value = aOptionController.text.isEmpty
          ? (earlierQuestion.option.isEmpty ? "" : earlierQuestion.option[1].value)
          : aOptionController.text,
    RestOption()
      ..value = bOptionController.text.isEmpty
          ? (earlierQuestion.option.length < 2 ? "" : earlierQuestion.option[1].value)
          : bOptionController.text,
    RestOption()
      ..value = cOptionController.text.isEmpty
          ? (earlierQuestion.option.length < 3 ? "" : earlierQuestion.option[2].value)
          : cOptionController.text,
    RestOption()
      ..value = dOptionController.text.isEmpty
          ? (earlierQuestion.option.length < 4 ? "" : earlierQuestion.option[3].value)
          : dOptionController.text,
  ];

  var rightAnswer = RestOption()..value = rightOptionController.text;
  var question = RestQuizQuestion();
  question..answer = rightAnswer;
  question
    ..question = questionController.text.isEmpty
        ? earlierQuestion.question
        : questionController.text;
  question..option.addAll(options);

  print(question.toString());

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
  RestQuizQuestion choosenQuiz;
  return AlertDialog(
    content:
    Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.3,

        child: DropdownButton<RestQuizQuestion>(
          items: appData.quizQuestions.map((RestQuizQuestion quiz) => DropdownMenuItem<RestQuizQuestion>(
            value: quiz,
            child: Text((quiz.question == null || quiz.question.isEmpty) ? "Brak nazwy" : quiz.question),
          )).toList(),
          value: choosenQuiz,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(
              color: Colors.black
          ),
          underline: Container(
            height: 2,
            color: Colors.black54,
          ),
          onChanged: (quiz) {
            choosenQuiz = quiz;
          },
        )
    ),
    actions: <Widget>[
      FlatButton(
        textColor: Colors.white,
        child: Text('Edytuj'),
        color: Colors.green,
        onPressed: () {
          editAction.edit=true;
          Navigator.of(context).pop(choosenQuiz);
        },
      ),
      FlatButton(
        textColor: Colors.white,
        color: Colors.red,
        child: Text('Usuń'),
        onPressed: () {
          editAction.delete=true;
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
final editAction = EditData();