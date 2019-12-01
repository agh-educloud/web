import 'package:firebase/firebase.dart' as fb;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:web/main_panel/main_panel.dart';
import 'package:web/utils/draw_line.dart';

class LoginWithGoogleButton extends StatelessWidget {
  final String imagePath;

  LoginWithGoogleButton({Key key, this.imagePath}) : super(key: key);

  var _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  doLogin() async {
    debugPrint("XXX");
    var provider = fb.GoogleAuthProvider();
    try {
      await fb.auth().signInWithPopup(provider);
      return true;
    } catch (e) {
      print("Error in sign in with google: $e");
      return false;
    }
  }

  doLogout() async {
    await _googleSignIn.signOut();
    return 'signOutWithGoogle succeeded....';
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.12;
    final double width = MediaQuery.of(context).size.width * 0.28;

    EdgeInsets margin =
        EdgeInsets.only(top: (MediaQuery.of(context).size.height * 0.055));

    return Container(
      height: height,
      width: width,
      child: Container(
        margin: margin,
        child: FlatButton(
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: width * 0.03),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
              CustomPaint(
                  painter: DrawLine(Offset(0, height / 4),
                      Offset(0, -height / 4), Colors.black)),
              Padding(
                padding: EdgeInsets.only(left: width * 0.06),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Zaloguj sie przy pomocy konta Google',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.black.withOpacity(0.6))),
                    ],
                  ),
                ),
              ),
            ],
          ),
          onPressed: () async {
            var succeed = await doLogin();
            if(succeed){
              await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPanel()),
              );
            }
          },
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(const Radius.circular(10.0)),
        ),
      ),
    );
  }
}
