import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/generated/class.pb.dart';
import 'package:web/presentation/start_presentation/questions_to_presenter.dart';
import 'package:web/presentation/start_presentation/quiz_question_list.dart';
import 'package:web/utils/footer/gradient_footer_bar.dart';
import 'package:web/utils/header/gradient_app_bar.dart';

class StartPresentationPanel extends StatelessWidget {
  StartPresentationPanel({Key key, this.classToStart}) : super(key: key);

  final double barHeight = 50.0;
  final ClassWithUuid classToStart;

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
            QuizQuestionListPanel(classToStart: classToStart,),
            QuestionsToPresenterPanel()
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: GradientFooterBar(),
      ),
    );
  }
}
