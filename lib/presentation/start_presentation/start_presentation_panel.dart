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
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      QuizQuestionListPanel(classToStart: classToStart,),
                      QuestionsToPresenterPanel(),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.05,
            child: EndPresentationButton(),
            alignment: Alignment.centerLeft
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: GradientFooterBar(),
      ),
    );
  }
}

class EndPresentationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.05;
    final double width = MediaQuery.of(context).size.width * 0.22;

    EdgeInsets margin =
    EdgeInsets.only(left: (MediaQuery.of(context).size.width * 0.085));

    return Container(
      height: height,
      width: width,
      child: Container(
        margin: margin,
        child: FlatButton(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                    text:'Zakończ prezentacje',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          onPressed: () {},
        ),
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0),
              bottomLeft: const Radius.circular(10.0),
              bottomRight: const Radius.circular(10.0)),
        ),
      ),
    );
  }
}
