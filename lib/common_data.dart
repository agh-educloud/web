import 'generated/class.pb.dart';

class AppData {
  static final AppData _appData = AppData._internal();

  String className = "";
  String classDescription = "";
  List<RestQuizQuestion> quizQuestions = [];
  List<int> presentationBytes = [];
  String user = "";

  factory AppData() {
    return _appData;
  }
  AppData._internal();

  void flush() {
    className = "";
    classDescription = "";
    quizQuestions = [];
    presentationBytes = [];
    user = "";
  }
}
final appData = AppData();