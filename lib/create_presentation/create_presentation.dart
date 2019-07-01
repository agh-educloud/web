import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:web/create_presentation/footer/gradient_footer_bar.dart';
import 'package:web/create_presentation/header/gradient_app_bar.dart';

import 'forms/basic_data_form.dart';
import 'forms/presentation_assigment_form.dart';
import 'forms/presentation_file_form.dart';

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
      bottomNavigationBar: new BottomAppBar(
        child: GradientFooterBar(),
      ),
    );
  }
}

class CreatePresentationPanelBody extends StatelessWidget {

  final Color gradientStartColor = const Color(0xffffffff);
  final Color gradientEndColor = const Color(0xffE5E5E5);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          BasicDataForm(),
          PresentationAssigmentForm(),
          PresentationFileForm()
        ],
      ),
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
        colors: [gradientStartColor, gradientEndColor],
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
      )),
    );
  }
}

