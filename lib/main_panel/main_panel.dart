import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/presentation/create_presentation.dart';
import 'package:web/presentation/edit_presentation.dart';
import 'package:web/presentation/presentation_history/presentation_history.dart';
import 'package:web/presentation/start_presentation/start_presentation.dart';
import 'package:web/utils/footer/gradient_footer_bar.dart';
import 'package:web/utils/header/gradient_app_bar.dart';

import 'main_panel_button.dart';

class MainPanel extends StatelessWidget {
  MainPanel({Key key}) : super(key: key);

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
      body: MainPanelBody(),
      bottomNavigationBar: BottomAppBar(
        child: GradientFooterBar(),
      ),
    );
  }
}

class MainPanelBody extends StatelessWidget {
  final double buttonHeight = 268.0;
  final double buttonWidth = 300.0;

  final Color gradientStartColor = const Color(0xffffffff);
  final Color gradientEndColor = const Color(0xffE5E5E5);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MainPanelButton(
              height: buttonHeight,
              width: buttonWidth,
              text: 'Stwórz prezentację',
              imagePath: 'create_presentation.png',
              statelessWidget: CreatePresentationPanel(classToHint: null),
            ),
            EditPanelButton(
              height: buttonHeight,
              width: buttonWidth,
              text: 'Edytuj prezentację',
              imagePath: 'edit_presentation.png',
            ),
            StartPanelButton(
                height: buttonHeight,
                width: buttonWidth,
                text: 'Rozpocznij prezentację',
                imagePath: 'start_presentation.png'),
            PresentationHistoryButton(
                height: buttonHeight,
                width: buttonWidth,
                text: 'Historia Prezentacji',
                imagePath: 'presentations_history.png'),
          ]),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [gradientStartColor, gradientEndColor],
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
      )),
    );
  }
}
