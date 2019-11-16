import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/generated/class.pb.dart';
import 'package:web/utils/footer/gradient_footer_bar.dart';
import 'package:web/utils/header/gradient_app_bar.dart';

import 'asked_question_list.dart';
import 'delegated_quiz.dart';

class PresentationHistoryPanel extends StatelessWidget{

  PresentationHistoryPanel({Key key, this.classToView}) : super(key: key);

  final double barHeight = 50.0;
  final ClassWithUuid classToView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: PreferredSize(
        preferredSize: Size.fromHeight(barHeight),
        child: AppBar(
          flexibleSpace: GradientAppBar(
            barHeight: barHeight,
          ),
        )),
    body: Container(
      height: MediaQuery.of(context).size.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <StatefulWidget>[
          DelegatedQuizQuestionList(classToView: classToView),
          AskedQuestionList()
        ],
      ),
    ),
    bottomNavigationBar: BottomAppBar(
      child: GradientFooterBar(),
    ),
  );

  }

}
