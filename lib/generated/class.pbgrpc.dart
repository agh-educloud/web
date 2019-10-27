///
//  Generated code. Do not modify.
//  source: class.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core show int, String, List;

import 'package:grpc/service_api.dart' as $grpc;

import 'chat.pb.dart' as $1;
import 'class.pb.dart';
import 'feedback.pb.dart' as $2;
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
  static final _$deleteClass = $grpc.ClientMethod<ClassUuid, $0.Status>(
      '/PresenterClassService/DeleteClass',
      (ClassUuid value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Status.fromBuffer(value));
  static final _$getClass = $grpc.ClientMethod<ClassUuid, Class>(
      '/PresenterClassService/GetClass',
      (ClassUuid value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => Class.fromBuffer(value));
  static final _$getClasses = $grpc.ClientMethod<Empty, GetClassesResponse>(
      '/PresenterClassService/GetClasses',
      (Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => GetClassesResponse.fromBuffer(value));
  static final _$startClass = $grpc.ClientMethod<ClassUuid, $1.ChatMessage>(
      '/PresenterClassService/StartClass',
      (ClassUuid value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ChatMessage.fromBuffer(value));
  static final _$endClass = $grpc.ClientMethod<ClassUuid, $0.Status>(
      '/PresenterClassService/EndClass',
      (ClassUuid value) => value.writeToBuffer(),
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

  $grpc.ResponseFuture<$0.Status> deleteClass(ClassUuid request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteClass, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<Class> getClass(ClassUuid request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getClass, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<GetClassesResponse> getClasses(Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getClasses, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$1.ChatMessage> startClass(ClassUuid request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$startClass, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.Status> endClass(ClassUuid request,
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
    $addMethod($grpc.ServiceMethod<ClassUuid, $0.Status>(
        'DeleteClass',
        deleteClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) => ClassUuid.fromBuffer(value),
        ($0.Status value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<ClassUuid, Class>(
        'GetClass',
        getClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) => ClassUuid.fromBuffer(value),
        (Class value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<Empty, GetClassesResponse>(
        'GetClasses',
        getClasses_Pre,
        false,
        false,
        ($core.List<$core.int> value) => Empty.fromBuffer(value),
        (GetClassesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<ClassUuid, $1.ChatMessage>(
        'StartClass',
        startClass_Pre,
        false,
        true,
        ($core.List<$core.int> value) => ClassUuid.fromBuffer(value),
        ($1.ChatMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<ClassUuid, $0.Status>(
        'EndClass',
        endClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) => ClassUuid.fromBuffer(value),
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

  $async.Future<Class> getClass_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getClass(call, await request);
  }

  $async.Future<GetClassesResponse> getClasses_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getClasses(call, await request);
  }

  $async.Stream<$1.ChatMessage> startClass_Pre(
      $grpc.ServiceCall call, $async.Future request) async* {
    yield* startClass(call, (await request) as ClassUuid);
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
      $grpc.ServiceCall call, ClassUuid request);
  $async.Future<Class> getClass($grpc.ServiceCall call, ClassUuid request);
  $async.Future<GetClassesResponse> getClasses(
      $grpc.ServiceCall call, Empty request);
  $async.Stream<$1.ChatMessage> startClass(
      $grpc.ServiceCall call, ClassUuid request);
  $async.Future<$0.Status> endClass($grpc.ServiceCall call, ClassUuid request);
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
      $grpc.ClientMethod<$1.ChatMessage, $0.Status>(
          '/UserClassService/SendMessageToPresenter',
          ($1.ChatMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Status.fromBuffer(value));
  static final _$sendFeedback = $grpc.ClientMethod<$2.Feedback, $0.Status>(
      '/UserClassService/SendFeedback',
      ($2.Feedback value) => value.writeToBuffer(),
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

  $grpc.ResponseFuture<$0.Status> sendMessageToPresenter($1.ChatMessage request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sendMessageToPresenter, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Status> sendFeedback($2.Feedback request,
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
    $addMethod($grpc.ServiceMethod<$1.ChatMessage, $0.Status>(
        'SendMessageToPresenter',
        sendMessageToPresenter_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ChatMessage.fromBuffer(value),
        ($0.Status value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Feedback, $0.Status>(
        'SendFeedback',
        sendFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Feedback.fromBuffer(value),
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
      $grpc.ServiceCall call, $1.ChatMessage request);
  $async.Future<$0.Status> sendFeedback(
      $grpc.ServiceCall call, $2.Feedback request);
}
