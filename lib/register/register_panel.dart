import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/register/register_button/register_button_container.dart';
import 'package:web/utils/footer/gradient_footer_bar.dart';
import 'package:web/utils/title_header/header/header.dart';

class RegisterPanel extends StatelessWidget {
  RegisterPanel({Key key}) : super(key: key);

  final double barHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterPanelBody(),
      bottomNavigationBar: BottomAppBar(
        child: GradientFooterBar(),
      ),
    );
  }
}

class RegisterPanelBody extends StatelessWidget {
  final Color gradientStartColor = const Color(0xffffffff);
  final Color gradientEndColor = const Color(0xffE5E5E5);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[Header(), LoginButtonContainer()],
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
