import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/generated/class.pb.dart';
import 'package:web/generated/quiz.pb.dart';
import 'package:web/presentation/presentation_common_data.dart';
import 'package:web/presentation/start_presentation/start_presentation_panel.dart';
import 'package:web/service/class.dart';
import 'package:web/utils/draw_line.dart';

class StartPanelButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final String imagePath;

  StartPanelButton({Key key,
    this.height,
    this.width,
    this.text,
    this.imagePath,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff3E5151), Color(0xffDECBA4)],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            ),
            borderRadius: BorderRadius.all(
              const Radius.circular(10.0),
            )),
        child: FlatButton(
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomPaint(
                    painter: DrawLine(Offset(width / 2, 0.0),
                        Offset(-width / 2, 0.0), Colors.white)),
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                  )),
            ],
          ),
          onPressed: () async {
            var list = await ClassService().getClasses();
            if(list.isNotEmpty) {
              await getPresentationsOptions(context, list).then((ClassWithUuid p) => {
                if(p != null){
                  ClassService().startClass(p.classUuid.toString()),
                  presentationData.presenting = true,
                  presentationData.quizQuestions = p.class_2.quizQuestion.map((quizQuestion) => quizQuestion.question).toList(),
                  poolQuizQuestionStatistics(p),
                  poolStudentQuestions(p),
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          StartPresentationPanel(classToStart: p)))
                }
              });
            }          },
        ),
      ),
    );
  }

  StreamSubscription quizStatistics;
  StreamSubscription studentQuestions;

  poolQuizQuestionStatistics(ClassWithUuid classWithUuid) {
    List<QuizQuestionStatistics> stats = [];
    quizStatistics = Stream.periodic(const Duration(milliseconds: 1000))
        .takeWhile((_) => presentationData.presenting)
        .listen((_) => {
          stats = [],
          classWithUuid.class_2.quizQuestion.forEach((question) => {
              ClassService().getQuizStatistics(question.uuid.toString())
            .then((value) => stats.add(value), onError: (_) => debugPrint('Unable to add question stats! '))
          }),
          presentationData.quizStatistics = stats
    });
  }

  poolStudentQuestions(ClassWithUuid classWithUuid) {
//TODO
//    studentQuestions = Stream.periodic(const Duration(milliseconds: 1000))
//        .listen((_) => {
//    });
  }
}


Future<ClassWithUuid> getPresentationsOptions(BuildContext context, List<ClassWithUuid> list) async {
  ClassWithUuid chosenClass;
  return showDialog<ClassWithUuid>(
      context: context,
      barrierDismissible: false, // user must tap button for close dialog!
      builder: (BuildContext context) {
        return AlertDialog(
          actions: <Widget>[
            FlatButton(
              textColor: Colors.white,
              child: Text('Rozpocznij'),
              color: Colors.green,
              onPressed: () {
                return Navigator.of(context).pop(chosenClass);
              },
            ),
            FlatButton(
              textColor: Colors.white,
              child: Text('Anuluj'),
              color: Colors.black38,
              onPressed: () {
                Navigator.of(context).pop(null);
              },
            ),
          ],
          content: DropdownButton<ClassWithUuid>(
            items: list.map((ClassWithUuid classWithUuid) =>
                DropdownMenuItem<ClassWithUuid>(
                  value: classWithUuid,
                  child: Text(classWithUuid.class_2.name),
                )).toList(),
            iconSize: 24,
            value: chosenClass,
            elevation: 16,
            style: TextStyle(color: Colors.black),
            underline: Container(
              height: 2,
              color: Colors.black54,
            ),
            onChanged: (value) {
              chosenClass = value;
            },
          ),
        );
      });
}

