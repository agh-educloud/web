
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/generated/class.pb.dart';
import 'package:web/presentation/start_presentation/start_presentation_panel_container.dart';
import 'package:web/service/class.dart';

class DelegatedQuizQuestionList extends StatefulWidget {
  DelegatedQuizQuestionList({Key key, this.classToView}) : super(key: key);

  final ClassWithUuid classToView;

  @override
  State<StatefulWidget> createState() {
    List<bool> _selected =
    List.generate(classToView.class_2.quizQuestion.length, (i) => false);
    return DelegatedQuizQuestionListState(classToView, _selected);
  }

}

class DelegatedQuizQuestionListState extends State<DelegatedQuizQuestionList> {
  final ClassWithUuid classToView;
  final List<bool> _selected;
  int selected;

  DelegatedQuizQuestionListState(this.classToView, this._selected);


  @override
  Widget build(BuildContext context) {
    return Container(
    height: MediaQuery
        .of(context)
        .size
        .height * 0.75,
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
              .height * 0.65,
          width: MediaQuery
              .of(context)
              .size
              .width * 0.4,
          body: ListView.builder(
            itemCount: classToView.class_2.quizQuestion.length,
            // ignore: missing_return
            itemBuilder: (context, i) {
              final item = classToView.class_2.quizQuestion[i];
              return Container(
                  decoration: BoxDecoration(
                    color: _selected[i] ? Colors.cyan : null,
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  // if current item is selected show blue color
                  child: ListTile(
                      title: Text(
                        item.question.question,
                        style: Theme
                            .of(context)
                            .textTheme
                            .headline,
                      ),
                      onTap: () => {
                        setState(() => {
                          _selected[i] = !_selected[i],
                          selected = i,
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
                    color: Colors.blueAccent,
                    child: Text("Szczegóły"),
                    onPressed: () {
                      if(classToView.class_2.quizQuestion[selected].question.option.isNotEmpty){
                        getViewOnlyQuestionView(classToView.class_2.quizQuestion[selected].question);
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
                        ClassService().getQuizHistoryStatistics(classToView.classUuid.toString()).then((stats){
                          var stat = stats.quizQuestionStatistics[selected];
                          showDialog(
                            context: context,
                            builder: (context) {
                              var participants = stat.participants;
                              var correctAnswersPercentage = stat.percentageOfCorrectAnswers;

                              participants =
                              participants == null ? 0 : participants;
                              correctAnswersPercentage =
                              correctAnswersPercentage == null
                                  ? 0.0
                                  : correctAnswersPercentage;

                              String contentText = "Ilość odpowiedzi: " +
                                  participants.toString() +
                                  "\n\nProcent poprawynch odpowiedzi: " +
                                  correctAnswersPercentage.toString() +
                                  "%";

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
                        });
                    }),
              ),
            ],
          ),
        ),
      ],
    ),
  );
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

