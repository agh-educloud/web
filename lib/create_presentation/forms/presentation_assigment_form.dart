import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

Future<QuizQuestion> waitForQuizQuestion(BuildContext context) async {
  final questionController = TextEditingController();
  final aOptionController = TextEditingController();
  final bOptionController = TextEditingController();
  final cOptionController = TextEditingController();
  final dOptionController = TextEditingController();
  final rightOptionController = TextEditingController();

  return showDialog<QuizQuestion>(
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

Future<QuizQuestion> waitForQuizQuestionEdit(
    BuildContext context, QuizQuestion questionToEdit) async {
  final questionController = TextEditingController();
  final aOptionController = TextEditingController();
  final bOptionController = TextEditingController();
  final cOptionController = TextEditingController();
  final dOptionController = TextEditingController();
  final rightOptionController = TextEditingController();

  return showDialog<QuizQuestion>(
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
                                labelText: (questionToEdit == null)
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
                                labelText: (questionToEdit == null)
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
                                labelText: (questionToEdit == null)
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
                                labelText: (questionToEdit == null)
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
                                labelText: (questionToEdit == null)
                                    ? 'Prawidłowa odpowiedź'
                                    : questionToEdit.option[0].value.toString(),
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
    Option()..value = aOptionController.text,
    Option()..value = bOptionController.text,
    Option()..value = cOptionController.text,
    Option()..value = dOptionController.text
  ];
  var rightAnswer = rightOptionController.text;
  var question = QuizQuestion();
  question..question = questionController.text;
  question..uuid = 1;
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
    QuizQuestion earlierQuestion) {
  var options = [
    Option()
      ..value = aOptionController.text.isEmpty
          ? earlierQuestion.option[0].value
          : aOptionController.text,
    Option()
      ..value = bOptionController.text.isEmpty
          ? earlierQuestion.option[1].value
          : bOptionController.text,
    Option()
      ..value = cOptionController.text.isEmpty
          ? earlierQuestion.option[2].value
          : cOptionController.text,
    Option()
      ..value = dOptionController.text.isEmpty
          ? earlierQuestion.option[3].value
          : dOptionController.text,
  ];
  var rightAnswer = rightOptionController.text;
  var question = QuizQuestion();
  question
    ..question = questionController.text.isEmpty
        ? earlierQuestion.question
        : questionController.text;
  question..uuid = 1;
  question..option.addAll(options);

  Navigator.pop(context, question);
}

Future<QuizQuestion> getQuizesOptions(BuildContext context) async {
  return await showDialog<QuizQuestion>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return getQuizQuestions(context);
      });
}

AlertDialog getQuizQuestions(BuildContext context) {
  QuizQuestion choosenQuiz;
  return AlertDialog(
       content:
      Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.3,

        child: DropdownButton<QuizQuestion>(
          items: appData.quizQuestions.map((QuizQuestion quiz) => DropdownMenuItem<QuizQuestion>(
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