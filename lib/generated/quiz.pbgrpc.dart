///
//  Generated code. Do not modify.
//  source: quiz.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core show int, String, List;

import 'package:grpc/service_api.dart' as $grpc;

import 'quiz.pb.dart';
import 'status.pb.dart' as $0;

export 'quiz.pb.dart';

class PresenterQuizServiceClient extends $grpc.Client {
  static final _$delegateQuizQuestion =
      $grpc.ClientMethod<QuizQuestion, $0.Status>(
          '/PresenterQuizService/DelegateQuizQuestion',
          (QuizQuestion value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Status.fromBuffer(value));
  static final _$getQuizQuestionStatistics =
      $grpc.ClientMethod<QuizQuestion, QuizQuestionStatistics>(
          '/PresenterQuizService/GetQuizQuestionStatistics',
          (QuizQuestion value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              QuizQuestionStatistics.fromBuffer(value));

  PresenterQuizServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.Status> delegateQuizQuestion(QuizQuestion request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$delegateQuizQuestion, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<QuizQuestionStatistics> getQuizQuestionStatistics(
      QuizQuestion request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getQuizQuestionStatistics, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class PresenterQuizServiceBase extends $grpc.Service {
  $core.String get $name => 'PresenterQuizService';

  PresenterQuizServiceBase() {
    $addMethod($grpc.ServiceMethod<QuizQuestion, $0.Status>(
        'DelegateQuizQuestion',
        delegateQuizQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => QuizQuestion.fromBuffer(value),
        ($0.Status value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<QuizQuestion, QuizQuestionStatistics>(
        'GetQuizQuestionStatistics',
        getQuizQuestionStatistics_Pre,
        false,
        true,
        ($core.List<$core.int> value) => QuizQuestion.fromBuffer(value),
        (QuizQuestionStatistics value) => value.writeToBuffer()));
  }

  $async.Future<$0.Status> delegateQuizQuestion_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return delegateQuizQuestion(call, await request);
  }

  $async.Stream<QuizQuestionStatistics> getQuizQuestionStatistics_Pre(
      $grpc.ServiceCall call, $async.Future request) async* {
    yield* getQuizQuestionStatistics(call, (await request) as QuizQuestion);
  }

  $async.Future<$0.Status> delegateQuizQuestion(
      $grpc.ServiceCall call, QuizQuestion request);

  $async.Stream<QuizQuestionStatistics> getQuizQuestionStatistics(
      $grpc.ServiceCall call, QuizQuestion request);
}

class UserQuizServiceClient extends $grpc.Client {
  static final _$answerQuizQuestion =
      $grpc.ClientMethod<QuizQuestionAnswer, QuizQuestionResponse>(
          '/UserQuizService/AnswerQuizQuestion',
          (QuizQuestionAnswer value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              QuizQuestionResponse.fromBuffer(value));

  UserQuizServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<QuizQuestionResponse> answerQuizQuestion(
      QuizQuestionAnswer request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$answerQuizQuestion, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class UserQuizServiceBase extends $grpc.Service {
  $core.String get $name => 'UserQuizService';

  UserQuizServiceBase() {
    $addMethod($grpc.ServiceMethod<QuizQuestionAnswer, QuizQuestionResponse>(
        'AnswerQuizQuestion',
        answerQuizQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => QuizQuestionAnswer.fromBuffer(value),
        (QuizQuestionResponse value) => value.writeToBuffer()));
  }

  $async.Future<QuizQuestionResponse> answerQuizQuestion_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return answerQuizQuestion(call, await request);
  }

  $async.Future<QuizQuestionResponse> answerQuizQuestion(
      $grpc.ServiceCall call, QuizQuestionAnswer request);
}
