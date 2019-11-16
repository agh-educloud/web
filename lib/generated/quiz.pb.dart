///
//  Generated code. Do not modify.
//  source: quiz.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

class RestQuizQuestionUuid extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RestQuizQuestionUuid')
    ..a<$core.int>(1, 'uuid', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RestQuizQuestionUuid() : super();
  RestQuizQuestionUuid.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RestQuizQuestionUuid.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RestQuizQuestionUuid clone() => RestQuizQuestionUuid()..mergeFromMessage(this);
  RestQuizQuestionUuid copyWith(void Function(RestQuizQuestionUuid) updates) => super.copyWith((message) => updates(message as RestQuizQuestionUuid));
  $pb.BuilderInfo get info_ => _i;
  static RestQuizQuestionUuid create() => RestQuizQuestionUuid();
  RestQuizQuestionUuid createEmptyInstance() => create();
  static $pb.PbList<RestQuizQuestionUuid> createRepeated() => $pb.PbList<RestQuizQuestionUuid>();
  static RestQuizQuestionUuid getDefault() => _defaultInstance ??= create()..freeze();
  static RestQuizQuestionUuid _defaultInstance;

  $core.int get uuid => $_get(0, 0);
  set uuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasUuid() => $_has(0);
  void clearUuid() => clearField(1);
}

class QuizQuestionStatistics extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QuizQuestionStatistics')
    ..a<$core.int>(1, 'questionUuid', $pb.PbFieldType.O3)
    ..a<$core.double>(2, 'percentageOfCorrectAnswers', $pb.PbFieldType.OF)
    ..a<$core.int>(3, 'participants', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  QuizQuestionStatistics() : super();
  QuizQuestionStatistics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  QuizQuestionStatistics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  QuizQuestionStatistics clone() => QuizQuestionStatistics()..mergeFromMessage(this);
  QuizQuestionStatistics copyWith(void Function(QuizQuestionStatistics) updates) => super.copyWith((message) => updates(message as QuizQuestionStatistics));
  $pb.BuilderInfo get info_ => _i;
  static QuizQuestionStatistics create() => QuizQuestionStatistics();
  QuizQuestionStatistics createEmptyInstance() => create();
  static $pb.PbList<QuizQuestionStatistics> createRepeated() => $pb.PbList<QuizQuestionStatistics>();
  static QuizQuestionStatistics getDefault() => _defaultInstance ??= create()..freeze();
  static QuizQuestionStatistics _defaultInstance;

  $core.int get questionUuid => $_get(0, 0);
  set questionUuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasQuestionUuid() => $_has(0);
  void clearQuestionUuid() => clearField(1);

  $core.double get percentageOfCorrectAnswers => $_getN(1);
  set percentageOfCorrectAnswers($core.double v) { $_setFloat(1, v); }
  $core.bool hasPercentageOfCorrectAnswers() => $_has(1);
  void clearPercentageOfCorrectAnswers() => clearField(2);

  $core.int get participants => $_get(2, 0);
  set participants($core.int v) { $_setSignedInt32(2, v); }
  $core.bool hasParticipants() => $_has(2);
  void clearParticipants() => clearField(3);
}

