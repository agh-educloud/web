import 'package:flutter_web/cupertino.dart';
import 'package:web/create_presentation/forms/container/create_presentation_form_container.dart';

class BasicDataForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CreatePresentationFormContainer(
      height: 100,
      width: 1000,
      title: "Podstawowe dane",
      child: Text(""),
    );
  }

}
