
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/presentation/start_presentation/start_presentation_panel_container.dart';

class AskedQuestionList  extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AskedQuestionListState();
  }
}

class AskedQuestionListState extends State<AskedQuestionList>{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        children: <Widget>[
          StartPresentationPanelContainer(
            height: MediaQuery.of(context).size.height * 0.65,
            width: MediaQuery.of(context).size.width * 0.4,
            body: ListView(),
            text: "Pytania od uczniów",
          ),
          Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.015),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blueAccent,
                      child: Text("Szczegóły"),
                      onPressed: () {
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}