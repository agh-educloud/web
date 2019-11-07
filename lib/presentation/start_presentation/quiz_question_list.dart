import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/generated/class.pb.dart';
import 'package:web/generated/quiz.pb.dart';
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
  QuizQuestion selected;
  int selectedIndex;

  QuizQuestionListPanelState(this.classToStart, this._selected,
      this.isAnySelected, this._delegated, this.selected, this.selectedIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.7,
      width: MediaQuery
          .of(context)
          .size
          .width * 0.4,
      child: Column(
        children: <Widget>[
          StartPresentationPanelContainer(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.6,
            width: MediaQuery
                .of(context)
                .size
                .width * 0.4,
            body: ListView.builder(
              itemCount: classToStart.class_2.quizQuestion.length,
              // ignore: missing_return
              itemBuilder: (context, i) {
                final item = classToStart.class_2.quizQuestion[i];
                return Container(
                    decoration: BoxDecoration(
                        color: getColour(i),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 2),
                    // if current item is selected show blue color
                    child: ListTile(
                        title: Text(
                          item.question,
                          style: Theme
                              .of(context)
                              .textTheme
                              .headline,
                        ),
                        onTap: () =>
                        {
                          setState(() =>
                          {
                            if (isAnySelected){
                              if (_selected[i]){
                                _selected[i] = !_selected[i],
                                isAnySelected = false
                              }
                            }
                            else
                              {
                                _selected[i] = !_selected[i],
                                isAnySelected = true,
                                selected = classToStart.class_2.quizQuestion[i],
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
                left: MediaQuery
                    .of(context)
                    .size
                    .width * 0.015),
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
                            isAnySelected = false;
                          });
                          ClassService().delegateQuizQuestion(
                              classToStart.classUuid.toString(), selected);
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
                        getViewOnlyQuestionView(selected);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.orangeAccent,
                      child: Text("Zobacz statystyki"),
                      onPressed: () {}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color getColour(int i) {
    if (_delegated[i]) {
      return Colors.black12;
    } else {
        if(_selected[i]){
          return Colors.cyan;
        }else{
          return null;
        }
    }
  }

  getViewOnlyQuestionView(QuizQuestion selected) {
    showDialog<QuizQuestion>(
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
                              enabled: false ,
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
                              enabled: false ,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.create),
                                  labelText: "A: " +
                                      (selected.option[0] != null
                                          ? "Brak"
                                          : selected.option[0]),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                                enabled: false ,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.create),
                                  labelText: "B: " +
                                      (selected.option[1] != null
                                          ? "Brak"
                                          : selected.option[1]),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                                enabled: false ,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.create),
                                  labelText: "C: " +
                                      (selected.option[2] != null
                                          ? "Brak"
                                          : selected.option[2]),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                                enabled: false ,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.create),
                                  labelText: "D: " +
                                      (selected.option[3] != null
                                          ? "Brak"
                                          : selected.option[3]),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                                enabled: false ,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.question_answer),
//                                   TODO
                                  labelText: "Prawidłowa odpowiedź: Brak",
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
