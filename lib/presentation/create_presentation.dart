import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/generated/class.pb.dart';
import 'package:web/presentation/forms/presentation_photo_assigment_form.dart';
import 'package:web/utils/footer/gradient_footer_bar.dart';
import 'package:web/utils/header/gradient_app_bar.dart';

import 'create_presentation_submit_button.dart';
import 'forms/basic_data_form/basic_data_form.dart';
import 'forms/presentation_assigment_form.dart';

class CreatePresentationPanel extends StatelessWidget {
  CreatePresentationPanel({Key key, this.classToHint}) : super(key: key);

  final double barHeight = 50.0;
  final ClassWithUuid classToHint;

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
      body: CreatePresentationPanelBody(classToHint: classToHint,),
      bottomNavigationBar: BottomAppBar(
        child: GradientFooterBar(),
      ),
    );
  }
}

class CreatePresentationPanelBody extends StatelessWidget {

  final ClassWithUuid classToHint;

  const CreatePresentationPanelBody({Key key, this.classToHint}) : super(key: key);

  Widget build(BuildContext context) {
    final Color gradientStartColor = const Color(0xffffffff);
    final Color gradientEndColor = const Color(0xffE5E5E5);

    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <StatefulWidget>[
          classToHint == null ? BasicDataForm() : BasicDataForm(nameToHint: classToHint.class_2.name,topicToHint: classToHint.class_2.topic,) ,
          classToHint == null ? PresentationAssigmentFormButton() : PresentationAssigmentFormButton(questionsToHint: buildQuizQuestion(classToHint.class_2.quizQuestion)),
          classToHint == null ? PresentationPhotoAssigmentFormButton() : PresentationPhotoAssigmentFormButton(questionsToHint: buildQuizQuestion(classToHint.class_2.quizQuestion)),
          CreatePresentationSubmitButton(classUuid: classToHint != null ? classToHint.classUuid : null,)
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

  List<RestQuizQuestion> buildQuizQuestion(List<QuizQuestionCreation> quizQuestion){
   return quizQuestion.map((quizQuestion) => quizQuestion.question).toList();
  }
}