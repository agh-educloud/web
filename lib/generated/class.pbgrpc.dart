///
//  Generated code. Do not modify.
//  source: class.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core show int, String, List;

import 'package:grpc/service_api.dart' as $grpc;

import 'chat.pb.dart' as $2;
import 'class.pb.dart';
import 'feedback.pb.dart' as $3;
import 'status.pb.dart' as $0;

export 'class.pb.dart';

class PresenterClassServiceClient extends $grpc.Client {
  static final _$createClass =
      $grpc.ClientMethod<ClassCreationRequest, ClassCreationResponse>(
          '/PresenterClassService/CreateClass',
          (ClassCreationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              ClassCreationResponse.fromBuffer(value));
  static final _$updateClass =
      $grpc.ClientMethod<ClassUpdateRequest, $0.Status>(
          '/PresenterClassService/UpdateClass',
          (ClassUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Status.fromBuffer(value));
  static final _$deleteClass =
      $grpc.ClientMethod<ClassDeleteRequest, $0.Status>(
          '/PresenterClassService/DeleteClass',
          (ClassDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Status.fromBuffer(value));
  static final _$startClass =
      $grpc.ClientMethod<ClassStartRequest, $2.ChatMessage>(
          '/PresenterClassService/StartClass',
          (ClassStartRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.ChatMessage.fromBuffer(value));
  static final _$endClass = $grpc.ClientMethod<ClassEndRequest, $0.Status>(
      '/PresenterClassService/EndClass',
      (ClassEndRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Status.fromBuffer(value));

  PresenterClassServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<ClassCreationResponse> createClass(
      ClassCreationRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createClass, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Status> updateClass(ClassUpdateRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateClass, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Status> deleteClass(ClassDeleteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteClass, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$2.ChatMessage> startClass(ClassStartRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$startClass, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.Status> endClass(ClassEndRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$endClass, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class PresenterClassServiceBase extends $grpc.Service {
  $core.String get $name => 'PresenterClassService';

  PresenterClassServiceBase() {
    $addMethod($grpc.ServiceMethod<ClassCreationRequest, ClassCreationResponse>(
        'CreateClass',
        createClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) => ClassCreationRequest.fromBuffer(value),
        (ClassCreationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<ClassUpdateRequest, $0.Status>(
        'UpdateClass',
        updateClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) => ClassUpdateRequest.fromBuffer(value),
        ($0.Status value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<ClassDeleteRequest, $0.Status>(
        'DeleteClass',
        deleteClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) => ClassDeleteRequest.fromBuffer(value),
        ($0.Status value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<ClassStartRequest, $2.ChatMessage>(
        'StartClass',
        startClass_Pre,
        false,
        true,
        ($core.List<$core.int> value) => ClassStartRequest.fromBuffer(value),
        ($2.ChatMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<ClassEndRequest, $0.Status>(
        'EndClass',
        endClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) => ClassEndRequest.fromBuffer(value),
        ($0.Status value) => value.writeToBuffer()));
  }

  $async.Future<ClassCreationResponse> createClass_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createClass(call, await request);
  }

  $async.Future<$0.Status> updateClass_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return updateClass(call, await request);
  }

  $async.Future<$0.Status> deleteClass_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return deleteClass(call, await request);
  }

  $async.Stream<$2.ChatMessage> startClass_Pre(
      $grpc.ServiceCall call, $async.Future request) async* {
    yield* startClass(call, (await request) as ClassStartRequest);
  }

  $async.Future<$0.Status> endClass_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return endClass(call, await request);
  }

  $async.Future<ClassCreationResponse> createClass(
      $grpc.ServiceCall call, ClassCreationRequest request);

  $async.Future<$0.Status> updateClass(
      $grpc.ServiceCall call, ClassUpdateRequest request);

  $async.Future<$0.Status> deleteClass(
      $grpc.ServiceCall call, ClassDeleteRequest request);

  $async.Stream<$2.ChatMessage> startClass(
      $grpc.ServiceCall call, ClassStartRequest request);

  $async.Future<$0.Status> endClass(
      $grpc.ServiceCall call, ClassEndRequest request);
}

class UserClassServiceClient extends $grpc.Client {
  static final _$joinClass = $grpc.ClientMethod<JoinClassRequest, $0.Status>(
      '/UserClassService/JoinClass',
      (JoinClassRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Status.fromBuffer(value));
  static final _$joinAssigmentLoop =
      $grpc.ClientMethod<JoinAssigmentLoopRequest, Assigment>(
          '/UserClassService/JoinAssigmentLoop',
          (JoinAssigmentLoopRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => Assigment.fromBuffer(value));
  static final _$sendMessageToPresenter =
      $grpc.ClientMethod<$2.ChatMessage, $0.Status>(
          '/UserClassService/SendMessageToPresenter',
          ($2.ChatMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Status.fromBuffer(value));
  static final _$sendFeedback = $grpc.ClientMethod<$3.Feedback, $0.Status>(
      '/UserClassService/SendFeedback',
      ($3.Feedback value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Status.fromBuffer(value));

  UserClassServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.Status> joinClass(JoinClassRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$joinClass, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<Assigment> joinAssigmentLoop(
      JoinAssigmentLoopRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$joinAssigmentLoop, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.Status> sendMessageToPresenter($2.ChatMessage request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sendMessageToPresenter, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Status> sendFeedback($3.Feedback request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sendFeedback, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class UserClassServiceBase extends $grpc.Service {
  $core.String get $name => 'UserClassService';

  UserClassServiceBase() {
    $addMethod($grpc.ServiceMethod<JoinClassRequest, $0.Status>(
        'JoinClass',
        joinClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) => JoinClassRequest.fromBuffer(value),
        ($0.Status value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<JoinAssigmentLoopRequest, Assigment>(
        'JoinAssigmentLoop',
        joinAssigmentLoop_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            JoinAssigmentLoopRequest.fromBuffer(value),
        (Assigment value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ChatMessage, $0.Status>(
        'SendMessageToPresenter',
        sendMessageToPresenter_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ChatMessage.fromBuffer(value),
        ($0.Status value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Feedback, $0.Status>(
        'SendFeedback',
        sendFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Feedback.fromBuffer(value),
        ($0.Status value) => value.writeToBuffer()));
  }

  $async.Future<$0.Status> joinClass_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return joinClass(call, await request);
  }

  $async.Stream<Assigment> joinAssigmentLoop_Pre(
      $grpc.ServiceCall call, $async.Future request) async* {
    yield* joinAssigmentLoop(call, (await request) as JoinAssigmentLoopRequest);
  }

  $async.Future<$0.Status> sendMessageToPresenter_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return sendMessageToPresenter(call, await request);
  }

  $async.Future<$0.Status> sendFeedback_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return sendFeedback(call, await request);
  }

  $async.Future<$0.Status> joinClass(
      $grpc.ServiceCall call, JoinClassRequest request);

  $async.Stream<Assigment> joinAssigmentLoop(
      $grpc.ServiceCall call, JoinAssigmentLoopRequest request);

  $async.Future<$0.Status> sendMessageToPresenter(
      $grpc.ServiceCall call, $2.ChatMessage request);

  $async.Future<$0.Status> sendFeedback(
      $grpc.ServiceCall call, $3.Feedback request);
}
