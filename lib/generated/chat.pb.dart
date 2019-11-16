///
//  Generated code. Do not modify.
//  source: chat.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $0;

class RestChatMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RestChatMessage')
    ..a<$0.RestUser>(1, 'sender', $pb.PbFieldType.OM, $0.RestUser.getDefault, $0.RestUser.create)
    ..a<RestMessage>(2, 'message', $pb.PbFieldType.OM, RestMessage.getDefault, RestMessage.create)
    ..aOS(3, 'code')
    ..hasRequiredFields = false
  ;

  RestChatMessage() : super();
  RestChatMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RestChatMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RestChatMessage clone() => RestChatMessage()..mergeFromMessage(this);
  RestChatMessage copyWith(void Function(RestChatMessage) updates) => super.copyWith((message) => updates(message as RestChatMessage));
  $pb.BuilderInfo get info_ => _i;
  static RestChatMessage create() => RestChatMessage();
  RestChatMessage createEmptyInstance() => create();
  static $pb.PbList<RestChatMessage> createRepeated() => $pb.PbList<RestChatMessage>();
  static RestChatMessage getDefault() => _defaultInstance ??= create()..freeze();
  static RestChatMessage _defaultInstance;

  $0.RestUser get sender => $_getN(0);
  set sender($0.RestUser v) { setField(1, v); }
  $core.bool hasSender() => $_has(0);
  void clearSender() => clearField(1);

  RestMessage get message => $_getN(1);
  set message(RestMessage v) { setField(2, v); }
  $core.bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);

  $core.String get code => $_getS(2, '');
  set code($core.String v) { $_setString(2, v); }
  $core.bool hasCode() => $_has(2);
  void clearCode() => clearField(3);
}

class RestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RestMessage')
    ..aOS(1, 'content')
    ..aOS(2, 'timeStamp')
    ..hasRequiredFields = false
  ;

  RestMessage() : super();
  RestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RestMessage clone() => RestMessage()..mergeFromMessage(this);
  RestMessage copyWith(void Function(RestMessage) updates) => super.copyWith((message) => updates(message as RestMessage));
  $pb.BuilderInfo get info_ => _i;
  static RestMessage create() => RestMessage();
  RestMessage createEmptyInstance() => create();
  static $pb.PbList<RestMessage> createRepeated() => $pb.PbList<RestMessage>();
  static RestMessage getDefault() => _defaultInstance ??= create()..freeze();
  static RestMessage _defaultInstance;

  $core.String get content => $_getS(0, '');
  set content($core.String v) { $_setString(0, v); }
  $core.bool hasContent() => $_has(0);
  void clearContent() => clearField(1);

  $core.String get timeStamp => $_getS(1, '');
  set timeStamp($core.String v) { $_setString(1, v); }
  $core.bool hasTimeStamp() => $_has(1);
  void clearTimeStamp() => clearField(2);
}

