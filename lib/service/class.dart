
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:web/generated/class.pb.dart';
import 'package:web/generated/class.pbgrpc.dart';
import 'package:web/generated/quiz.pb.dart';

class ClassService{
  List<int> classUuids = [];

  Future<void> createClass(String name, String description, List<QuizQuestion> questions, List<int> presentationBytes) async {
    Class rqClass = Class()
      ..name = name
      ..topic = description
      ..presentation = presentationBytes
      ..quizQuestion.addAll(questions);

    ClassCreationRequest request = ClassCreationRequest()
      ..class_1 = rqClass;

    debugPrint("Sending");

    final response = await http.post('http://localhost:8080/class', body: request.writeToJson());

    if (response.statusCode != 201) {
      throw Exception('Failed to create class');
    }
    classUuids.add(ClassCreationResponse.fromJson(response.body).getClassUuid());

  }

  Future<List<Class>> getClasses() async {

    debugPrint("Getting classes");
//    final response = await http.get('http://localhost:8080/class');

//    return [Class.fromJson("{ \"name\": \"class1\" }"),Class.fromJson("{ \"name\": \"class2\" }")];
//    return Class.fromJson(i)
    Class rqClass = Class()
      ..name = 'hehe'
      ..topic = 'desc';
    Class rqClass2 = Class()
      ..name = 'hehe1'
      ..topic = 'desc2';

    return [rqClass,rqClass2];
  }

  Future<void> updateClass(String id, String name, String description, List<QuizQuestion> questions) async {
    Class rqClass = Class()
      ..name = name
      ..topic = description
      ..quizQuestion.addAll(questions);

    ClassCreationRequest request = ClassCreationRequest()
      ..class_1 = rqClass;

    debugPrint("Sending");

    final response = await http.post('http://localhost:8080/class', body: request.writeToJson());

    if (response.statusCode != 201) {
      throw Exception('Failed to create class');
    }

  }

}