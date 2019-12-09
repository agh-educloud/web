///
//  Generated code. Do not modify.
//  source: chat.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Empty')
    ..hasRequiredFields = false
  ;

  Empty() : super();
  Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Empty clone() => Empty()..mergeFromMessage(this);
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty));
  $pb.BuilderInfo get info_ => _i;
  static Empty create() => Empty();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  static Empty getDefault() => _defaultInstance ??= create()..freeze();
  static Empty _defaultInstance;
}

class StudentQuestions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StudentQuestions')
    ..pc<RestChatMessage>(1, 'message', $pb.PbFieldType.PM,RestChatMessage.create)
    ..hasRequiredFields = false
  ;

  StudentQuestions() : super();
  StudentQuestions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  StudentQuestions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  StudentQuestions clone() => StudentQuestions()..mergeFromMessage(this);
  StudentQuestions copyWith(void Function(StudentQuestions) updates) => super.copyWith((message) => updates(message as StudentQuestions));
  $pb.BuilderInfo get info_ => _i;
  static StudentQuestions create() => StudentQuestions();
  StudentQuestions createEmptyInstance() => create();
  static $pb.PbList<StudentQuestions> createRepeated() => $pb.PbList<StudentQuestions>();
  static StudentQuestions getDefault() => _defaultInstance ??= create()..freeze();
  static StudentQuestions _defaultInstance;

  $core.List<RestChatMessage> get message => $_getList(0);
}

class RestChatMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RestChatMessage')
    ..a<RestMessage>(1, 'message', $pb.PbFieldType.OM, RestMessage.getDefault, RestMessage.create)
    ..aOS(2, 'code')
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

  RestMessage get message => $_getN(0);
  set message(RestMessage v) { setField(1, v); }
  $core.bool hasMessage() => $_has(0);
  void clearMessage() => clearField(1);

  $core.String get code => $_getS(1, '');
  set code($core.String v) { $_setString(1, v); }
  $core.bool hasCode() => $_has(1);
  void clearCode() => clearField(2);
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

