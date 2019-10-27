///
//  Generated code. Do not modify.
//  source: quiz.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

class QuizQuestion extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QuizQuestion')
    ..a<$core.int>(1, 'uuid', $pb.PbFieldType.O3)
    ..aOS(2, 'question')
    ..aOS(3, 'hint')
    ..pc<Option>(4, 'option', $pb.PbFieldType.PM,Option.create)
    ..hasRequiredFields = false
  ;

  QuizQuestion() : super();
  QuizQuestion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  QuizQuestion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  QuizQuestion clone() => QuizQuestion()..mergeFromMessage(this);
  QuizQuestion copyWith(void Function(QuizQuestion) updates) => super.copyWith((message) => updates(message as QuizQuestion));
  $pb.BuilderInfo get info_ => _i;
  static QuizQuestion create() => QuizQuestion();
  QuizQuestion createEmptyInstance() => create();
  static $pb.PbList<QuizQuestion> createRepeated() => $pb.PbList<QuizQuestion>();
  static QuizQuestion getDefault() => _defaultInstance ??= create()..freeze();
  static QuizQuestion _defaultInstance;

  $core.int get uuid => $_get(0, 0);
  set uuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasUuid() => $_has(0);
  void clearUuid() => clearField(1);

  $core.String get question => $_getS(1, '');
  set question($core.String v) { $_setString(1, v); }
  $core.bool hasQuestion() => $_has(1);
  void clearQuestion() => clearField(2);

  $core.String get hint => $_getS(2, '');
  set hint($core.String v) { $_setString(2, v); }
  $core.bool hasHint() => $_has(2);
  void clearHint() => clearField(3);

  $core.List<Option> get option => $_getList(3);
}

class Option extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Option')
    ..aOS(1, 'value')
    ..hasRequiredFields = false
  ;

  Option() : super();
  Option.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Option.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Option clone() => Option()..mergeFromMessage(this);
  Option copyWith(void Function(Option) updates) => super.copyWith((message) => updates(message as Option));
  $pb.BuilderInfo get info_ => _i;
  static Option create() => Option();
  Option createEmptyInstance() => create();
  static $pb.PbList<Option> createRepeated() => $pb.PbList<Option>();
  static Option getDefault() => _defaultInstance ??= create()..freeze();
  static Option _defaultInstance;

  $core.String get value => $_getS(0, '');
  set value($core.String v) { $_setString(0, v); }
  $core.bool hasValue() => $_has(0);
  void clearValue() => clearField(1);
}

class QuizQuestionCreation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QuizQuestionCreation')
    ..a<QuizQuestion>(1, 'quizQuestion', $pb.PbFieldType.OM, QuizQuestion.getDefault, QuizQuestion.create)
    ..a<Option>(2, 'answer', $pb.PbFieldType.OM, Option.getDefault, Option.create)
    ..hasRequiredFields = false
  ;

  QuizQuestionCreation() : super();
  QuizQuestionCreation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  QuizQuestionCreation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  QuizQuestionCreation clone() => QuizQuestionCreation()..mergeFromMessage(this);
  QuizQuestionCreation copyWith(void Function(QuizQuestionCreation) updates) => super.copyWith((message) => updates(message as QuizQuestionCreation));
  $pb.BuilderInfo get info_ => _i;
  static QuizQuestionCreation create() => QuizQuestionCreation();
  QuizQuestionCreation createEmptyInstance() => create();
  static $pb.PbList<QuizQuestionCreation> createRepeated() => $pb.PbList<QuizQuestionCreation>();
  static QuizQuestionCreation getDefault() => _defaultInstance ??= create()..freeze();
  static QuizQuestionCreation _defaultInstance;

  QuizQuestion get quizQuestion => $_getN(0);
  set quizQuestion(QuizQuestion v) { setField(1, v); }
  $core.bool hasQuizQuestion() => $_has(0);
  void clearQuizQuestion() => clearField(1);

  Option get answer => $_getN(1);
  set answer(Option v) { setField(2, v); }
  $core.bool hasAnswer() => $_has(1);
  void clearAnswer() => clearField(2);
}

class QuizQuestionAnswer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QuizQuestionAnswer')
    ..a<$core.int>(1, 'uuid', $pb.PbFieldType.O3)
    ..a<Option>(2, 'answer', $pb.PbFieldType.OM, Option.getDefault, Option.create)
    ..hasRequiredFields = false
  ;

  QuizQuestionAnswer() : super();
  QuizQuestionAnswer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  QuizQuestionAnswer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  QuizQuestionAnswer clone() => QuizQuestionAnswer()..mergeFromMessage(this);
  QuizQuestionAnswer copyWith(void Function(QuizQuestionAnswer) updates) => super.copyWith((message) => updates(message as QuizQuestionAnswer));
  $pb.BuilderInfo get info_ => _i;
  static QuizQuestionAnswer create() => QuizQuestionAnswer();
  QuizQuestionAnswer createEmptyInstance() => create();
  static $pb.PbList<QuizQuestionAnswer> createRepeated() => $pb.PbList<QuizQuestionAnswer>();
  static QuizQuestionAnswer getDefault() => _defaultInstance ??= create()..freeze();
  static QuizQuestionAnswer _defaultInstance;

  $core.int get uuid => $_get(0, 0);
  set uuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasUuid() => $_has(0);
  void clearUuid() => clearField(1);

  Option get answer => $_getN(1);
  set answer(Option v) { setField(2, v); }
  $core.bool hasAnswer() => $_has(1);
  void clearAnswer() => clearField(2);
}

class QuizQuestionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QuizQuestionResponse')
    ..a<$core.int>(1, 'questionUuid', $pb.PbFieldType.O3)
    ..a<Option>(2, 'correctAnswer', $pb.PbFieldType.OM, Option.getDefault, Option.create)
    ..hasRequiredFields = false
  ;

  QuizQuestionResponse() : super();
  QuizQuestionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  QuizQuestionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  QuizQuestionResponse clone() => QuizQuestionResponse()..mergeFromMessage(this);
  QuizQuestionResponse copyWith(void Function(QuizQuestionResponse) updates) => super.copyWith((message) => updates(message as QuizQuestionResponse));
  $pb.BuilderInfo get info_ => _i;
  static QuizQuestionResponse create() => QuizQuestionResponse();
  QuizQuestionResponse createEmptyInstance() => create();
  static $pb.PbList<QuizQuestionResponse> createRepeated() => $pb.PbList<QuizQuestionResponse>();
  static QuizQuestionResponse getDefault() => _defaultInstance ??= create()..freeze();
  static QuizQuestionResponse _defaultInstance;

  $core.int get questionUuid => $_get(0, 0);
  set questionUuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasQuestionUuid() => $_has(0);
  void clearQuestionUuid() => clearField(1);

  Option get correctAnswer => $_getN(1);
  set correctAnswer(Option v) { setField(2, v); }
  $core.bool hasCorrectAnswer() => $_has(1);
  void clearCorrectAnswer() => clearField(2);
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

