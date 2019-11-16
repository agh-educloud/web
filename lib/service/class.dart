import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:web/generated/class.pb.dart';
import 'package:web/generated/class.pbgrpc.dart';
import 'package:web/generated/quiz.pb.dart';

class ClassService {
  List<int> classUuids = [];

  Future<void> createClass(String name, String description,
      List<QuizQuestion> questions, List<int> presentationBytes) async {
    Class rqClass = Class()
      ..name = name
      ..topic = description
      ..presentation = presentationBytes;

    if(questions.isNotEmpty){
      rqClass..quizQuestion.addAll(questions);
    }


    debugPrint("Sending:\n" + rqClass.writeToJson());

    final response =
        await http.post('http://localhost:8080/class', body: rqClass.writeToJson());

    if (response.statusCode != 201) {
      throw Exception('Failed to create class');
    }

    classUuids.add(ClassCreationResponse.fromJson(response.body).classUuid);
  }

  Future<List<ClassWithUuid>> getClasses() async {
    debugPrint("Getting classes");
    final response = await http.get('http://localhost:8080/class');
    debugPrint(response.body.toString());

    var classesResponse = GetClassesResponse.fromJson(response.body);
    debugPrint(classesResponse.classes.toString());

    return classesResponse.classes;
  }

  Future<void> updateClass(int id, String name, String description, List<QuizQuestion> questions) async {
    Class rqClass = Class()
      ..name = name
      ..topic = description
      ..quizQuestion.addAll(questions);

    ClassUpdateRequest request = ClassUpdateRequest()
      ..classUuid = id
      ..class_2 = rqClass;

    debugPrint("Sending to " + 'http://localhost:8080/class/' + id.toString() + "\n" + request.writeToJson());

    final response = await http.patch('http://localhost:8080/class/' + id.toString(), body: request.writeToJson());

    if (response.statusCode != 200) {
      throw Exception('Failed to update class');
    }
  }

  Future<void> startClass(String classUuid) async {
    ClassUuid classUuid2 = ClassUuid()
        ..classUuid = int.parse(classUuid);

    debugPrint('Starting class with id: ' + classUuid);
    await http.post('http://localhost:8080/class/' + classUuid, body: classUuid2.writeToJson());
  }

  Future<void> deleteClass(ClassWithUuid chosenClass) async {
    debugPrint('Deleting class with id: ' + chosenClass.classUuid.toString());
    await http.delete('http://localhost:8080/class/' + chosenClass.classUuid.toString());
  }

  Future<void> delegateQuizQuestion(String classUuid, QuizQuestion selected) async {
    await http.post('http://localhost:8080/quizesToDelegate/' + classUuid, body: selected.writeToJson());
  }

}
