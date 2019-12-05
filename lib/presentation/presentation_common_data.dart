import 'package:web/generated/chat.pb.dart';
import 'package:web/generated/class.pb.dart';
import 'package:web/generated/quiz.pb.dart';

class PresentationData {
  static final PresentationData _appData = PresentationData._internal();

  List<RestQuizQuestion> quizQuestions = [];
  List<QuizQuestionStatistics> quizStatistics = [];
  List<RestChatMessage> studentQuestions = [];
  bool presenting = false;

  factory PresentationData() {
    return _appData;
  }
  PresentationData._internal();

  void flush() {
    quizQuestions = [];
    studentQuestions = [];
    quizStatistics = [];
    presenting = false;
  }
}
final presentationData = PresentationData();