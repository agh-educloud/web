///
//  Generated code. Do not modify.
//  source: status.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'status.pbenum.dart';

export 'status.pbenum.dart';

class RestStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RestStatus')
    ..e<RestStatus_Code>(1, 'code', $pb.PbFieldType.OE, RestStatus_Code.OK, RestStatus_Code.valueOf, RestStatus_Code.values)
    ..aOS(2, 'message')
    ..aOS(3, 'details')
    ..hasRequiredFields = false
  ;

  RestStatus() : super();
  RestStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RestStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RestStatus clone() => RestStatus()..mergeFromMessage(this);
  RestStatus copyWith(void Function(RestStatus) updates) => super.copyWith((message) => updates(message as RestStatus));
  $pb.BuilderInfo get info_ => _i;
  static RestStatus create() => RestStatus();
  RestStatus createEmptyInstance() => create();
  static $pb.PbList<RestStatus> createRepeated() => $pb.PbList<RestStatus>();
  static RestStatus getDefault() => _defaultInstance ??= create()..freeze();
  static RestStatus _defaultInstance;

  RestStatus_Code get code => $_getN(0);
  set code(RestStatus_Code v) { setField(1, v); }
  $core.bool hasCode() => $_has(0);
  void clearCode() => clearField(1);

  $core.String get message => $_getS(1, '');
  set message($core.String v) { $_setString(1, v); }
  $core.bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);

  $core.String get details => $_getS(2, '');
  set details($core.String v) { $_setString(2, v); }
  $core.bool hasDetails() => $_has(2);
  void clearDetails() => clearField(3);
}

