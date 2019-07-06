import 'package:flutter_web/cupertino.dart';

class CreatePresentationFormContainer extends StatelessWidget {
  final String title;
  final StatelessWidget child;
  final double height;

  const CreatePresentationFormContainer(
      {Key key, this.title, this.child, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery
        .of(context)
        .size
        .width;

    EdgeInsets margin =
    EdgeInsets.only(left: (width * 0.05), right: (width * 0.05));

    return Column(
      children: <Widget>[
        Align(
            alignment: Alignment.topLeft,
            child: Container(
                margin: margin,
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )
            )),
        Container(
          alignment: Alignment.centerLeft,
          height: height,
          width: width,
          margin: margin,
          color: Color(0xffC4C4C4).withOpacity(0.25),
          child: child,
        ),
      ],
    );
  }
}
