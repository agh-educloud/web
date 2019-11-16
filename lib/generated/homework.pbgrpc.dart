///
//  Generated code. Do not modify.
//  source: homework.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'homework.pb.dart';
import 'status.pb.dart' as $0;
export 'homework.pb.dart';

class PresenterHomeworkServiceClient extends $grpc.Client {
  static final _$createHomework =
      $grpc.ClientMethod<CreateRestHomeworkRequest, $0.RestStatus>(
          '/PresenterHomeworkService/CreateHomework',
          (CreateRestHomeworkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.RestStatus.fromBuffer(value));

  PresenterHomeworkServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.RestStatus> createHomework(
      CreateRestHomeworkRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createHomework, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class PresenterHomeworkServiceBase extends $grpc.Service {
  $core.String get $name => 'PresenterHomeworkService';

  PresenterHomeworkServiceBase() {
    $addMethod($grpc.ServiceMethod<CreateRestHomeworkRequest, $0.RestStatus>(
        'CreateHomework',
        createHomework_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            CreateRestHomeworkRequest.fromBuffer(value),
        ($0.RestStatus value) => value.writeToBuffer()));
  }

  $async.Future<$0.RestStatus> createHomework_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createHomework(call, await request);
  }

  $async.Future<$0.RestStatus> createHomework(
      $grpc.ServiceCall call, CreateRestHomeworkRequest request);
}
