import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
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
  final double buttonWidth = 369.0;

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
                text: 'Stwórz prezentacje',
                imagePath: '/images/main_panel/create_presentation.png'),
            MainPanelButton(
                height: buttonHeight,
                width: buttonWidth,
                text: 'Rozpocznij prezentacje',
                imagePath: '/images/main_panel/start_presentation.png'),
            MainPanelButton(
                height: buttonHeight,
                width: buttonWidth,
                text: 'Historia Prezentacji',
                imagePath: '/images/main_panel/presentations_history.png'),
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
