///
//  Generated code. Do not modify.
//  source: feedback.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'feedback.pbenum.dart';

export 'feedback.pbenum.dart';

class Feedback extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Feedback')
    ..e<Feedback_Rate>(1, 'rate', $pb.PbFieldType.OE, Feedback_Rate.TERRIBLE, Feedback_Rate.valueOf, Feedback_Rate.values)
    ..aOS(2, 'whatUserLike')
    ..aOS(3, 'whatUserDislike')
    ..aOS(4, 'additionalComment')
    ..hasRequiredFields = false
  ;

  Feedback() : super();
  Feedback.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Feedback.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Feedback clone() => Feedback()..mergeFromMessage(this);
  Feedback copyWith(void Function(Feedback) updates) => super.copyWith((message) => updates(message as Feedback));
  $pb.BuilderInfo get info_ => _i;
  static Feedback create() => Feedback();
  Feedback createEmptyInstance() => create();
  static $pb.PbList<Feedback> createRepeated() => $pb.PbList<Feedback>();
  static Feedback getDefault() => _defaultInstance ??= create()..freeze();
  static Feedback _defaultInstance;

  Feedback_Rate get rate => $_getN(0);
  set rate(Feedback_Rate v) { setField(1, v); }
  $core.bool hasRate() => $_has(0);
  void clearRate() => clearField(1);

  $core.String get whatUserLike => $_getS(1, '');
  set whatUserLike($core.String v) { $_setString(1, v); }
  $core.bool hasWhatUserLike() => $_has(1);
  void clearWhatUserLike() => clearField(2);

  $core.String get whatUserDislike => $_getS(2, '');
  set whatUserDislike($core.String v) { $_setString(2, v); }
  $core.bool hasWhatUserDislike() => $_has(2);
  void clearWhatUserDislike() => clearField(3);

  $core.String get additionalComment => $_getS(3, '');
  set additionalComment($core.String v) { $_setString(3, v); }
  $core.bool hasAdditionalComment() => $_has(3);
  void clearAdditionalComment() => clearField(4);
}

