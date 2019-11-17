
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/generated/class.pb.dart';
import 'package:web/presentation/start_presentation/start_presentation_panel_container.dart';

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
//                      getViewOnlyQuestionView(selected);
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

}

