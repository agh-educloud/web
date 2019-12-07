///
//  Generated code. Do not modify.
//  source: quiz.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'quiz.pb.dart';
import 'status.pb.dart' as $0;
export 'quiz.pb.dart';

class PresenterQuizServiceClient extends $grpc.Client {
  static final _$delegateQuizQuestion =
      $grpc.ClientMethod<RestQuizQuestionUuid, $0.RestStatus>(
          '/PresenterQuizService/DelegateQuizQuestion',
          (RestQuizQuestionUuid value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.RestStatus.fromBuffer(value));
  static final _$getQuizQuestionStatistics =
      $grpc.ClientMethod<RestQuizQuestionUuid, QuizQuestionStatistics>(
          '/PresenterQuizService/GetQuizQuestionStatistics',
          (RestQuizQuestionUuid value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              QuizQuestionStatistics.fromBuffer(value));
  static final _$getOpenQuizQuestionAnswers =
      $grpc.ClientMethod<RestQuizQuestionUuid, QuizQuestionStatistics>(
          '/PresenterQuizService/GetOpenQuizQuestionAnswers',
          (RestQuizQuestionUuid value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              QuizQuestionStatistics.fromBuffer(value));

  PresenterQuizServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.RestStatus> delegateQuizQuestion(
      RestQuizQuestionUuid request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$delegateQuizQuestion, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<QuizQuestionStatistics> getQuizQuestionStatistics(
      RestQuizQuestionUuid request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getQuizQuestionStatistics, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseStream<QuizQuestionStatistics> getOpenQuizQuestionAnswers(
      RestQuizQuestionUuid request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getOpenQuizQuestionAnswers, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class PresenterQuizServiceBase extends $grpc.Service {
  $core.String get $name => 'PresenterQuizService';

  PresenterQuizServiceBase() {
    $addMethod($grpc.ServiceMethod<RestQuizQuestionUuid, $0.RestStatus>(
        'DelegateQuizQuestion',
        delegateQuizQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => RestQuizQuestionUuid.fromBuffer(value),
        ($0.RestStatus value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<RestQuizQuestionUuid, QuizQuestionStatistics>(
            'GetQuizQuestionStatistics',
            getQuizQuestionStatistics_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                RestQuizQuestionUuid.fromBuffer(value),
            (QuizQuestionStatistics value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<RestQuizQuestionUuid, QuizQuestionStatistics>(
            'GetOpenQuizQuestionAnswers',
            getOpenQuizQuestionAnswers_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                RestQuizQuestionUuid.fromBuffer(value),
            (QuizQuestionStatistics value) => value.writeToBuffer()));
  }

  $async.Future<$0.RestStatus> delegateQuizQuestion_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return delegateQuizQuestion(call, await request);
  }

  $async.Stream<QuizQuestionStatistics> getQuizQuestionStatistics_Pre(
      $grpc.ServiceCall call, $async.Future request) async* {
    yield* getQuizQuestionStatistics(
        call, (await request) as RestQuizQuestionUuid);
  }

  $async.Stream<QuizQuestionStatistics> getOpenQuizQuestionAnswers_Pre(
      $grpc.ServiceCall call, $async.Future request) async* {
    yield* getOpenQuizQuestionAnswers(
        call, (await request) as RestQuizQuestionUuid);
  }

  $async.Future<$0.RestStatus> delegateQuizQuestion(
      $grpc.ServiceCall call, RestQuizQuestionUuid request);
  $async.Stream<QuizQuestionStatistics> getQuizQuestionStatistics(
      $grpc.ServiceCall call, RestQuizQuestionUuid request);
  $async.Stream<QuizQuestionStatistics> getOpenQuizQuestionAnswers(
      $grpc.ServiceCall call, RestQuizQuestionUuid request);
}
