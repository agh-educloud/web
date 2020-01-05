import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/generated/class.pb.dart';
import 'package:web/generated/quiz.pb.dart';
import 'package:web/presentation/presentation_common_data.dart';
import 'package:web/presentation/start_presentation/start_presentation_panel_container.dart';
import 'package:web/service/class.dart';

class QuizQuestionListPanel extends StatefulWidget {
  QuizQuestionListPanel({Key key, this.classToStart}) : super(key: key);

  final ClassWithUuid classToStart;

  @override
  State<StatefulWidget> createState() {
    List<bool> _selected =
        List.generate(classToStart.class_2.quizQuestion.length, (i) => false);
    List<bool> _delegated =
        List.generate(classToStart.class_2.quizQuestion.length, (i) => false);
    return QuizQuestionListPanelState(
        classToStart, _selected, false, _delegated, null, null);
  }
}

class QuizQuestionListPanelState extends State<QuizQuestionListPanel> {
  final ClassWithUuid classToStart;
  bool isAnySelected;
  final List<bool> _selected;
  final List<bool> _delegated;
  QuizQuestionCreation selected;
  int selectedIndex;


  List<Widget> images;

  QuizQuestionListPanelState(this.classToStart, this._selected,
      this.isAnySelected, this._delegated, this.selected, this.selectedIndex){
    Timer.periodic(Duration(seconds: 1), (Timer t) => setState((){
      images  = presentationData.urls
          .map<Widget>((url) => Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(children: <Widget>[
            Image.network(url, fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              ),
            ),
          ]),
        ),
      ))
          .toList();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        children: <Widget>[
          StartPresentationPanelContainer(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.4,
            body: ListView.builder(
              itemCount: classToStart.class_2.quizQuestion.length,
              // ignore: missing_return
              itemBuilder: (context, i) {
                final item = classToStart.class_2.quizQuestion[i].question;
                return Container(
                    decoration: BoxDecoration(
                      color: getColour(i),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 2),
                    // if current item is selected show blue color
                    child: ListTile(
                        title: Text(
                          item.question,
                          style: Theme.of(context).textTheme.headline,
                        ),
                        onTap: () => {
                              setState(() => {
                                    if (isAnySelected)
                                      {
                                        if (_selected[i])
                                          {
                                            _selected[i] = !_selected[i],
                                            isAnySelected = false
                                          }
                                      }
                                    else
                                      {
                                        _selected[i] = !_selected[i],
                                        isAnySelected = true,
                                        selected = classToStart
                                            .class_2.quizQuestion[i],
                                        selected.uuid = i,
                                        debugPrint(classToStart.class_2.quizQuestion.toString()),
                                        debugPrint(i.toString()),
//                                        debugPrint(classToStart.class_2.quizQuestion[i].question.),
                                        debugPrint(classToStart.class_2.quizQuestion[i].question.answer.value),
                                        selectedIndex = i
                                      }
                                  }), // reverse bool value
                            }));
              },
            ),
            text: "Deleguj pytanie",
          ),
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.015),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text("Deleguj"),
                      onPressed: () {
                        if (selected != null) {
                          setState(() {
                            _delegated[selectedIndex] = true;
                            _selected[selectedIndex] =
                                !_selected[selectedIndex];
                            isAnySelected = false;
                          });
                          debugPrint("XD");
                          debugPrint(selected.uuid.toString());
                        ClassService().delegateQuizQuestion(
                              classToStart.classUuid.toString(),
                              RestQuizQuestionUuid()..uuid = selected.uuid);
                        }
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blueAccent,
                      child: Text("Szczegóły"),
                      onPressed: () {
                        debugPrint(selected.question.option.toString());
                        if(selected.question.option.isNotEmpty){
                          getViewOnlyQuestionView(selected.question);
                        }
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.orangeAccent,
                      child: Text("Zobacz statystyki"),
                      onPressed: () {
                        var question = classToStart.class_2.quizQuestion[selectedIndex].question;
                        if (presentationData.quizStatistics.isNotEmpty &&
                            question.option != null && question.option.isNotEmpty) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              var participants = presentationData.quizStatistics
                                  .firstWhere(
                                      (q) => q.questionUuid == selected.uuid)
                                  .participants;
                              var correctAnswersPercentage = presentationData
                                  .quizStatistics
                                  .firstWhere(
                                      (q) => q.questionUuid == selected.uuid)
                                  .percentageOfCorrectAnswers;

                              participants =
                                  participants == null ? 0 : participants;
                              correctAnswersPercentage =
                                  correctAnswersPercentage == null
                                      ? 0.0
                                      : correctAnswersPercentage;

                              String contentText = "Ilość odpowiedzi: " +
                                  participants.toString() +
                                  "\n\nProcent poprawynch odpowiedzi: " +
                                  (correctAnswersPercentage * 100).toString() +
                                  "%";

                              Timer.periodic(Duration(seconds: 1), (Timer t) => setState((){
                                var participants = presentationData
                                    .quizStatistics
                                    .firstWhere((q) =>
                                q.questionUuid ==
                                    selected.uuid)
                                    .participants;
                                var correctAnswersPercentage =
                                    presentationData.quizStatistics
                                        .firstWhere((q) =>
                                    q.questionUuid ==
                                        selected.uuid)
                                        .percentageOfCorrectAnswers;
                                participants = participants == null
                                    ? 0
                                    : participants;
                                correctAnswersPercentage =
                                correctAnswersPercentage == null
                                    ? 0.0
                                    : correctAnswersPercentage;

                                contentText = "Ilość odpowiedzi: " +
                                    participants.toString() +
                                    "\n\nProcent poprawynch odpowiedzi: " +
                                    (correctAnswersPercentage  * 100)
                                        .toString() +
                                    "%";
                              }));
                              return StatefulBuilder(

                                builder: (context, setState) {
                                  return AlertDialog(
                                    title: Text("Statystyki"),
                                    content: Text(contentText),
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
                                  );
                                },
                              );
                            },
                          );
                        }
                        ;
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.orangeAccent,
                      child: Text("Zobacz odpowiedzi"),
                      onPressed: () {
                        setState(() {

                        });
                        var question = classToStart.class_2.quizQuestion[selectedIndex].question;
                        debugPrint(question.question);
                        debugPrint(question.option == null ? "" : question.option.toString());
                        if (question.option == null || question.option.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return StatefulBuilder(
                                builder: (context, setState) {
                                  return AlertDialog(
                                    title: Text("Odpowiedzi (" + images.length.toString() + ")" ),
                                    content: CarouselSlider(
                                      items: images.map((image) {
                                        return Builder(
                                          builder: (BuildContext context) {
                                            return image;
                                          },
                                        );
                                      }).toList(),
                                      autoPlay: false,
                                      enlargeCenterPage: true,
                                      viewportFraction: 0.9,
                                      aspectRatio: 2.0,
                                    ),
                                    actions: <Widget>[
                                      FlatButton(
                                        textColor: Colors.white,
                                        child: Text('Powrót '),
                                        color: Colors.black38,
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          );
                        }
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color getColour(int i) {
    if (_delegated[i] && _selected[i]) {
      return Colors.black38;
    } else if (_delegated[i]) {
      return Colors.black12;
    } else {
      if (_selected[i]) {
        return Colors.cyan;
      } else {
        return null;
      }
    }
  }

  getViewOnlyQuestionView(RestQuizQuestion selected) {
    showDialog<RestQuizQuestion>(
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
                              enabled: false,
                              decoration: InputDecoration(
                                icon: Icon(Icons.question_answer),
                                labelText: "Pytanie: " +
                                    (selected.question.isEmpty
                                        ? "Brak"
                                        : selected.question),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                                enabled: false,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.create),
                                  labelText: "A: " +
                                      (selected.option == null ||
                                              selected.option.isEmpty
                                          ? "Brak"
                                          : selected.option[0].value),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                                enabled: false,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.create),
                                  labelText: "B: " +
                                      (selected.option.length > 1 &&
                                              selected.option[1].value.isEmpty
                                          ? "Brak"
                                          : selected.option[1].value),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                                enabled: false,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.create),
                                  labelText: "C: " +
                                      (selected.option.length > 2 &&
                                              selected.option[2].value.isEmpty
                                          ? "Brak"
                                          : selected.option[2].value),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                                enabled: false,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.create),
                                  labelText: "D: " +
                                      (selected.option.length > 3 &&
                                              selected.option[3].value.isEmpty
                                          ? "Brak"
                                          : selected.option[3].value),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                                enabled: false,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.question_answer),
                                  labelText: "Prawidłowa odpowiedź: " +
                                      (selected.answer == null
                                          ? "Brak"
                                          : selected.answer.value),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RaisedButton(
                                textColor: Colors.white,
                                color: Colors.black38,
                                child: Text("Powrót"),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                          ),
                        ],
                      ),
                    ),
                  )));
        });
  }
}
