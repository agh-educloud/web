import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/presentation/presentation_common_data.dart';
import 'package:web/presentation/start_presentation/start_presentation_panel_container.dart';

class QuestionsToPresenterPanel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuestionsToPresenterPanelState();
  }
}

class QuestionsToPresenterPanelState extends State<QuestionsToPresenterPanel> {

  int selected = -1;

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
              itemCount: presentationData.studentQuestions.length,
              // ignore: missing_return
              itemBuilder: (context, i) {
                final item = presentationData.studentQuestions[i].message;
                return Container(
                    decoration: BoxDecoration(
                        color: Colors.cyan
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 2),
                    // if current item is selected show blue color
                    child: ListTile(
                        title: Text(
                          item.toString(),
                          style: Theme
                              .of(context)
                              .textTheme
                              .headline,
                        ),
                        onTap: () =>
                        {
                          setState(() =>
                          {
                            selected = i
                          }), // reverse bool value
                        }));
              },
            ),
            text: "Pytania od uczniów",
          ),
          Container(
            margin: EdgeInsets.only(left: MediaQuery
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
                        if (selected != -1) {
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
                                          text: presentationData.studentQuestions[selected].message.content,
                                          style: TextStyle(
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                        };
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text("Odśwież"),
                      onPressed: () {
                        setState(() {

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
}