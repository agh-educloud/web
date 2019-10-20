
import 'package:flutter/cupertino.dart';
import 'package:grpc/grpc_web.dart';
import 'package:web/generated/class.pb.dart';
import 'package:web/generated/class.pbgrpc.dart';
import 'package:web/generated/quiz.pb.dart';

class ClassService{
  PresenterClassServiceClient presenterClassServiceClient;
  UserClassServiceClient userClassServiceClient;
  BuildContext context;
  GrpcWebClientChannel channel;

  ClassService(){
    var uri = Uri.parse('http://127.0.0.1:50052/');
    channel = GrpcWebClientChannel.xhr(uri);

    presenterClassServiceClient = PresenterClassServiceClient(channel);
    userClassServiceClient = UserClassServiceClient(channel);
  }

  void createClass(String name, String description, List<QuizQuestion> questions){
    Class rqClass = Class()
      ..name = name
      ..topic = description
      ..quizQuestion.addAll(questions);

    ClassCreationRequest request = ClassCreationRequest()
      ..class_1 = rqClass;

    this.presenterClassServiceClient.createClass(request);
  }

}