///
//  Generated code. Do not modify.
//  source: class.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'class.pb.dart';
import 'status.pb.dart' as $0;
import 'chat.pb.dart' as $1;
export 'class.pb.dart';

class RestPresenterClassServiceClient extends $grpc.Client {
  static final _$createClass =
      $grpc.ClientMethod<ClassCreationRequest, ClassCreationResponse>(
          '/RestPresenterClassService/CreateClass',
          (ClassCreationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              ClassCreationResponse.fromBuffer(value));
  static final _$updateClass =
      $grpc.ClientMethod<ClassUpdateRequest, $0.RestStatus>(
          '/RestPresenterClassService/UpdateClass',
          (ClassUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.RestStatus.fromBuffer(value));
  static final _$deleteClass = $grpc.ClientMethod<ClassUuid, $0.RestStatus>(
      '/RestPresenterClassService/DeleteClass',
      (ClassUuid value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RestStatus.fromBuffer(value));
  static final _$getClass = $grpc.ClientMethod<ClassUuid, RestClass>(
      '/RestPresenterClassService/GetClass',
      (ClassUuid value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => RestClass.fromBuffer(value));
  static final _$getClasses = $grpc.ClientMethod<$1.Empty, GetClassesResponse>(
      '/RestPresenterClassService/GetClasses',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => GetClassesResponse.fromBuffer(value));
  static final _$getQuizzesHistoryStatistics =
      $grpc.ClientMethod<ClassUuid, QuizzesHistoryStatistics>(
          '/RestPresenterClassService/GetQuizzesHistoryStatistics',
          (ClassUuid value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              QuizzesHistoryStatistics.fromBuffer(value));
  static final _$startClass = $grpc.ClientMethod<ClassUuid, ClassCode>(
      '/RestPresenterClassService/StartClass',
      (ClassUuid value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => ClassCode.fromBuffer(value));
  static final _$endClass = $grpc.ClientMethod<ClassUuid, $0.RestStatus>(
      '/RestPresenterClassService/EndClass',
      (ClassUuid value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RestStatus.fromBuffer(value));

  RestPresenterClassServiceClient($grpc.ClientChannel channel,
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

  $grpc.ResponseFuture<$0.RestStatus> updateClass(ClassUpdateRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateClass, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.RestStatus> deleteClass(ClassUuid request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteClass, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<RestClass> getClass(ClassUuid request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getClass, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<GetClassesResponse> getClasses($1.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getClasses, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<QuizzesHistoryStatistics> getQuizzesHistoryStatistics(
      ClassUuid request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getQuizzesHistoryStatistics, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ClassCode> startClass(ClassUuid request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$startClass, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.RestStatus> endClass(ClassUuid request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$endClass, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class RestPresenterClassServiceBase extends $grpc.Service {
  $core.String get $name => 'RestPresenterClassService';

  RestPresenterClassServiceBase() {
    $addMethod($grpc.ServiceMethod<ClassCreationRequest, ClassCreationResponse>(
        'CreateClass',
        createClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) => ClassCreationRequest.fromBuffer(value),
        (ClassCreationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<ClassUpdateRequest, $0.RestStatus>(
        'UpdateClass',
        updateClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) => ClassUpdateRequest.fromBuffer(value),
        ($0.RestStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<ClassUuid, $0.RestStatus>(
        'DeleteClass',
        deleteClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) => ClassUuid.fromBuffer(value),
        ($0.RestStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<ClassUuid, RestClass>(
        'GetClass',
        getClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) => ClassUuid.fromBuffer(value),
        (RestClass value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, GetClassesResponse>(
        'GetClasses',
        getClasses_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        (GetClassesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<ClassUuid, QuizzesHistoryStatistics>(
        'GetQuizzesHistoryStatistics',
        getQuizzesHistoryStatistics_Pre,
        false,
        false,
        ($core.List<$core.int> value) => ClassUuid.fromBuffer(value),
        (QuizzesHistoryStatistics value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<ClassUuid, ClassCode>(
        'StartClass',
        startClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) => ClassUuid.fromBuffer(value),
        (ClassCode value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<ClassUuid, $0.RestStatus>(
        'EndClass',
        endClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) => ClassUuid.fromBuffer(value),
        ($0.RestStatus value) => value.writeToBuffer()));
  }

  $async.Future<ClassCreationResponse> createClass_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createClass(call, await request);
  }

  $async.Future<$0.RestStatus> updateClass_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return updateClass(call, await request);
  }

  $async.Future<$0.RestStatus> deleteClass_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return deleteClass(call, await request);
  }

  $async.Future<RestClass> getClass_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getClass(call, await request);
  }

  $async.Future<GetClassesResponse> getClasses_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getClasses(call, await request);
  }

  $async.Future<QuizzesHistoryStatistics> getQuizzesHistoryStatistics_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getQuizzesHistoryStatistics(call, await request);
  }

  $async.Future<ClassCode> startClass_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return startClass(call, await request);
  }

  $async.Future<$0.RestStatus> endClass_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return endClass(call, await request);
  }

  $async.Future<ClassCreationResponse> createClass(
      $grpc.ServiceCall call, ClassCreationRequest request);
  $async.Future<$0.RestStatus> updateClass(
      $grpc.ServiceCall call, ClassUpdateRequest request);
  $async.Future<$0.RestStatus> deleteClass(
      $grpc.ServiceCall call, ClassUuid request);
  $async.Future<RestClass> getClass($grpc.ServiceCall call, ClassUuid request);
  $async.Future<GetClassesResponse> getClasses(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<QuizzesHistoryStatistics> getQuizzesHistoryStatistics(
      $grpc.ServiceCall call, ClassUuid request);
  $async.Future<ClassCode> startClass(
      $grpc.ServiceCall call, ClassUuid request);
  $async.Future<$0.RestStatus> endClass(
      $grpc.ServiceCall call, ClassUuid request);
}
