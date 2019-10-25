import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/create_presentation/forms/basic_data_form/basic_data_form.dart';
import 'package:web/generated/quiz.pb.dart';
import 'package:web/utils/footer/gradient_footer_bar.dart';
import 'package:web/utils/header/gradient_app_bar.dart';

import 'create_presentation_submit_button.dart';
import 'forms/presentation_assigment_form.dart';

class CreatePresentationPanel extends StatelessWidget {
  CreatePresentationPanel({Key key}) : super(key: key);

  final double barHeight = 50.0;

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
      body: CreatePresentationPanelBody(),
      bottomNavigationBar: BottomAppBar(
        child: GradientFooterBar(),
      ),
    );
  }
}

class CreatePresentationPanelBody extends StatelessWidget {

  Widget build(BuildContext context) {
    final Color gradientStartColor = const Color(0xffffffff);
    final Color gradientEndColor = const Color(0xffE5E5E5);

    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <StatefulWidget>[
          BasicDataForm(),
          PresentationAssigmentFormButton(),
//          PresentationFileForm(),
          CreatePresentationSubmitButton()
        ],
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [gradientStartColor, gradientEndColor],
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
      )),
    );
  }
}


class AppData {
  static final AppData _appData = AppData._internal();

  String className = "";
  String classDescription = "";
  List<QuizQuestion> quizQuestions = [];
  List<int> presentationBytes = [];

  factory AppData() {
    return _appData;
  }
  AppData._internal();
}
final appData = AppData();