///
//  Generated code. Do not modify.
//  source: homework.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

class CreateRestHomeworkRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateRestHomeworkRequest')
    ..a<$core.int>(1, 'homeworkUuid', $pb.PbFieldType.O3)
    ..aOS(2, 'url')
    ..aOS(3, 'mailTo')
    ..hasRequiredFields = false
  ;

  CreateRestHomeworkRequest() : super();
  CreateRestHomeworkRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateRestHomeworkRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateRestHomeworkRequest clone() => CreateRestHomeworkRequest()..mergeFromMessage(this);
  CreateRestHomeworkRequest copyWith(void Function(CreateRestHomeworkRequest) updates) => super.copyWith((message) => updates(message as CreateRestHomeworkRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreateRestHomeworkRequest create() => CreateRestHomeworkRequest();
  CreateRestHomeworkRequest createEmptyInstance() => create();
  static $pb.PbList<CreateRestHomeworkRequest> createRepeated() => $pb.PbList<CreateRestHomeworkRequest>();
  static CreateRestHomeworkRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateRestHomeworkRequest _defaultInstance;

  $core.int get homeworkUuid => $_get(0, 0);
  set homeworkUuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasHomeworkUuid() => $_has(0);
  void clearHomeworkUuid() => clearField(1);

  $core.String get url => $_getS(1, '');
  set url($core.String v) { $_setString(1, v); }
  $core.bool hasUrl() => $_has(1);
  void clearUrl() => clearField(2);

  $core.String get mailTo => $_getS(2, '');
  set mailTo($core.String v) { $_setString(2, v); }
  $core.bool hasMailTo() => $_has(2);
  void clearMailTo() => clearField(3);
}

class RestHomework extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RestHomework')
    ..pc<RestHomework>(1, 'homework', $pb.PbFieldType.PM,RestHomework.create)
    ..hasRequiredFields = false
  ;

  RestHomework() : super();
  RestHomework.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RestHomework.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RestHomework clone() => RestHomework()..mergeFromMessage(this);
  RestHomework copyWith(void Function(RestHomework) updates) => super.copyWith((message) => updates(message as RestHomework));
  $pb.BuilderInfo get info_ => _i;
  static RestHomework create() => RestHomework();
  RestHomework createEmptyInstance() => create();
  static $pb.PbList<RestHomework> createRepeated() => $pb.PbList<RestHomework>();
  static RestHomework getDefault() => _defaultInstance ??= create()..freeze();
  static RestHomework _defaultInstance;

  $core.List<RestHomework> get homework => $_getList(0);
}

