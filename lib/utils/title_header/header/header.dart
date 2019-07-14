import 'package:flutter_web/cupertino.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'MAŁOPOLSKA CHMURA EDUKACYJNA',
        style: TextStyle(
            color: Color(0xff000C40).withOpacity(0.7),
            fontWeight: FontWeight.bold,
            fontSize: 60),
        textAlign: TextAlign.center,
      ),
    );
  }
}
