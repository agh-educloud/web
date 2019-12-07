import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:web/generated/chat.pb.dart';
import 'package:web/generated/class.pb.dart';
import 'package:web/generated/class.pbgrpc.dart';
import 'package:web/generated/quiz.pb.dart';

class ClassService {
  List<int> classUuids = [];

  final String hostAndPort = "localhost:8080";
  final String protocol = "http://";
  
  Future<void> createClass(String name, String description,
      List<RestQuizQuestion> questions) async {
    RestClass rqClass = RestClass()
      ..name = name
      ..topic = description;

    if(questions.isNotEmpty){
      rqClass..quizQuestion.addAll(questions.map((question) => QuizQuestionCreation()..question = question).toList());
    }

    debugPrint("Sending:\n" + rqClass.writeToJson());

    final response =
        await http.post(protocol + hostAndPort + '/class', body: rqClass.writeToJson());

    if (response.statusCode != 201) {
      throw Exception('Failed to create class');
    }

    classUuids.add(ClassCreationResponse.fromJson(response.body).classUuid);
  }

  Future<List<ClassWithUuid>> getClasses() async {
    debugPrint("Getting classes");
    final response = await http.get(protocol + hostAndPort + '/class');
    debugPrint(response.body.toString());

    var classesResponse = GetClassesResponse.fromJson(response.body);
    debugPrint(classesResponse.classes.toString());

    return classesResponse.classes;
  }

  Future<void> updateClass(int id, String name, String description, List<RestQuizQuestion> questions) async {
    RestClass rqClass = RestClass()
      ..name = name
      ..topic = description;

    if(questions.isNotEmpty){
      rqClass..quizQuestion.addAll(questions.map((question) => QuizQuestionCreation()..question = question).toList());
    }

    debugPrint("Sending:\n" + rqClass.writeToJson());


    ClassUpdateRequest request = ClassUpdateRequest()
      ..classUuid = id
      ..class_2 = rqClass;

    debugPrint("Sending to " + protocol + hostAndPort + '/class/' + id.toString() + "\n" + request.writeToJson());

    final response = await http.patch(protocol + hostAndPort + '/class/' + id.toString(), body: request.writeToJson());

    if (response.statusCode != 200) {
      throw Exception('Failed to update class');
    }
  }

  Future<String> startClass(String classUuid) async {
    ClassUuid classUuid2 = ClassUuid()
        ..classUuid = int.parse(classUuid);

    debugPrint('Starting class with id: ' + classUuid);
    await http.post(protocol + hostAndPort + '/startClass/' + classUuid, body: classUuid2.writeToJson());
    return "12345";
  }

  Future<void> deleteClass(ClassWithUuid chosenClass) async {
    debugPrint('Deleting class with id: ' + chosenClass.classUuid.toString());
    await http.delete(protocol + hostAndPort + '/class/' + chosenClass.classUuid.toString());
  }

  Future<void> delegateQuizQuestion(String classUuid, RestQuizQuestionUuid selected) async {
    await http.post(protocol + hostAndPort + '/quizToDelegate/' + classUuid, body: selected.writeToJson());
  }

  getPresentedClasses() {

  }

  Future<QuizQuestionStatistics> getQuizStatistics(String quizUuid) async {
    final response = await http.get(protocol + hostAndPort + '/quizStatistics/' + quizUuid);
    return QuizQuestionStatistics.fromJson(response.body);
  }

  Future<RestChatMessage> getStudentQuestions(String classUuid) async {
    final response = await http.get(protocol + hostAndPort + '/quizStatistics/' + classUuid);
    return RestChatMessage.fromJson(response.body);
  }

}
