///
//  Generated code. Do not modify.
//  source: user.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

class RestUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RestUser')
    ..aOS(1, 'uuid')
    ..aOS(2, 'name')
    ..hasRequiredFields = false
  ;

  RestUser() : super();
  RestUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RestUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RestUser clone() => RestUser()..mergeFromMessage(this);
  RestUser copyWith(void Function(RestUser) updates) => super.copyWith((message) => updates(message as RestUser));
  $pb.BuilderInfo get info_ => _i;
  static RestUser create() => RestUser();
  RestUser createEmptyInstance() => create();
  static $pb.PbList<RestUser> createRepeated() => $pb.PbList<RestUser>();
  static RestUser getDefault() => _defaultInstance ??= create()..freeze();
  static RestUser _defaultInstance;

  $core.String get uuid => $_getS(0, '');
  set uuid($core.String v) { $_setString(0, v); }
  $core.bool hasUuid() => $_has(0);
  void clearUuid() => clearField(1);

  $core.String get name => $_getS(1, '');
  set name($core.String v) { $_setString(1, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);
}

