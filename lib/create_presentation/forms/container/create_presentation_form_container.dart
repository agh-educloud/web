import 'package:flutter_web/cupertino.dart';
import 'package:vector_math/vector_math_64.dart';

class CreatePresentationFormContainer extends StatelessWidget {

  final String title;
  final double height;
  final double width;
  final StatelessWidget child;

  const CreatePresentationFormContainer({Key key, this.title, this.height, this.width, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: <Widget>[
        Text(title),
        Container(
          height: height,
          width: width,
          color: Color(0xffC4C4C4).withOpacity(0.25),
          child: child,
        ),
      ],
    );
  }

}