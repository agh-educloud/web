import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/register/token/token_form_state.dart';

class Token extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    EdgeInsets margin = EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.03,
        top: (MediaQuery.of(context).size.height * 0.01));

    return Container(
      margin: margin,
      child: Column(
        children: <Widget>[
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  child: Text(
                'Token',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.8)),
              ))),
          Container(
            alignment: Alignment.centerLeft,
            child: TokenForm(),
          )
        ],
      ),
    );
  }
}

class TokenForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TokenFormState();
  }
}
