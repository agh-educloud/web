///
//  Generated code. Do not modify.
//  source: chat.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'user.pb.dart' as $0;
import 'chat.pb.dart';
export 'chat.pb.dart';

class RestChatServiceClient extends $grpc.Client {
  static final _$receiveMessages =
      $grpc.ClientMethod<$0.RestUser, RestChatMessage>(
          '/RestChatService/ReceiveMessages',
          ($0.RestUser value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => RestChatMessage.fromBuffer(value));

  RestChatServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<RestChatMessage> receiveMessages($0.RestUser request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$receiveMessages, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class RestChatServiceBase extends $grpc.Service {
  $core.String get $name => 'RestChatService';

  RestChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RestUser, RestChatMessage>(
        'ReceiveMessages',
        receiveMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.RestUser.fromBuffer(value),
        (RestChatMessage value) => value.writeToBuffer()));
  }

  $async.Stream<RestChatMessage> receiveMessages_Pre(
      $grpc.ServiceCall call, $async.Future request) async* {
    yield* receiveMessages(call, (await request) as $0.RestUser);
  }

  $async.Stream<RestChatMessage> receiveMessages(
      $grpc.ServiceCall call, $0.RestUser request);
}
