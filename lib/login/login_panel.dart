import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:web/utils/footer/gradient_footer_bar.dart';
import 'package:web/utils/title_header/header/header.dart';

import 'login_button/login_button_container.dart';

class LoginPanel extends StatelessWidget {
  LoginPanel({Key key}) : super(key: key);

  final double barHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPanelBody(),
      bottomNavigationBar: BottomAppBar(
        child: GradientFooterBar(),
      ),
    );
  }
}

class LoginPanelBody extends StatelessWidget {
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

