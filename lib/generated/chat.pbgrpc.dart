///
//  Generated code. Do not modify.
//  source: chat.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'chat.pb.dart';
export 'chat.pb.dart';

class RestChatServiceClient extends $grpc.Client {
  static final _$getStudentQuestions =
      $grpc.ClientMethod<Empty, StudentQuestions>(
          '/RestChatService/GetStudentQuestions',
          (Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => StudentQuestions.fromBuffer(value));

  RestChatServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<StudentQuestions> getStudentQuestions(Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getStudentQuestions, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class RestChatServiceBase extends $grpc.Service {
  $core.String get $name => 'RestChatService';

  RestChatServiceBase() {
    $addMethod($grpc.ServiceMethod<Empty, StudentQuestions>(
        'GetStudentQuestions',
        getStudentQuestions_Pre,
        false,
        true,
        ($core.List<$core.int> value) => Empty.fromBuffer(value),
        (StudentQuestions value) => value.writeToBuffer()));
  }

  $async.Stream<StudentQuestions> getStudentQuestions_Pre(
      $grpc.ServiceCall call, $async.Future request) async* {
    yield* getStudentQuestions(call, (await request) as Empty);
  }

  $async.Stream<StudentQuestions> getStudentQuestions(
      $grpc.ServiceCall call, Empty request);
}
