import 'package:firebase/firebase.dart' as fb;
import 'package:firebase/src/assets/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:web/main.dart';

main() async {
  try {
    await config();

    fb.initializeApp(
      apiKey: "AIzaSyCirpdgLsezsvNNPAlsU0mC-i5T1d0U1kQ",
      authDomain: "malopolska-1f008.firebaseapp.com",
      databaseURL: "https://malopolska-1f008.firebaseio.com",
      projectId: "malopolska-1f008",
      storageBucket: "malopolska-1f008.appspot.com",
    );

    runApp(MyApp());
  } on fb.FirebaseJsNotLoadedException catch (e) {
    print(e);
  }
}