///
//  Generated code. Do not modify.
//  source: class.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'homework.pb.dart' as $3;
import 'status.pb.dart' as $0;

class RestClass extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RestClass')
    ..aOS(1, 'name')
    ..aOS(2, 'topic')
    ..pc<QuizQuestionCreation>(3, 'quizQuestion', $pb.PbFieldType.PM,QuizQuestionCreation.create)
    ..pc<$3.RestHomework>(4, 'homework', $pb.PbFieldType.PM,$3.RestHomework.create)
    ..a<$core.List<$core.int>>(5, 'presentation', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RestClass() : super();
  RestClass.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RestClass.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RestClass clone() => RestClass()..mergeFromMessage(this);
  RestClass copyWith(void Function(RestClass) updates) => super.copyWith((message) => updates(message as RestClass));
  $pb.BuilderInfo get info_ => _i;
  static RestClass create() => RestClass();
  RestClass createEmptyInstance() => create();
  static $pb.PbList<RestClass> createRepeated() => $pb.PbList<RestClass>();
  static RestClass getDefault() => _defaultInstance ??= create()..freeze();
  static RestClass _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) { $_setString(0, v); }
  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $core.String get topic => $_getS(1, '');
  set topic($core.String v) { $_setString(1, v); }
  $core.bool hasTopic() => $_has(1);
  void clearTopic() => clearField(2);

  $core.List<QuizQuestionCreation> get quizQuestion => $_getList(2);

  $core.List<$3.RestHomework> get homework => $_getList(3);

  $core.List<$core.int> get presentation => $_getN(4);
  set presentation($core.List<$core.int> v) { $_setBytes(4, v); }
  $core.bool hasPresentation() => $_has(4);
  void clearPresentation() => clearField(5);
}

class QuizQuestionCreation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QuizQuestionCreation')
    ..a<$core.int>(1, 'uuid', $pb.PbFieldType.O3)
    ..a<RestQuizQuestion>(2, 'question', $pb.PbFieldType.OM, RestQuizQuestion.getDefault, RestQuizQuestion.create)
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

  $core.int get uuid => $_get(0, 0);
  set uuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasUuid() => $_has(0);
  void clearUuid() => clearField(1);

  RestQuizQuestion get question => $_getN(1);
  set question(RestQuizQuestion v) { setField(2, v); }
  $core.bool hasQuestion() => $_has(1);
  void clearQuestion() => clearField(2);
}

class RestQuizQuestion extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RestQuizQuestion')
    ..aOS(1, 'question')
    ..aOS(2, 'hint')
    ..pc<RestOption>(3, 'option', $pb.PbFieldType.PM,RestOption.create)
    ..a<RestOption>(4, 'answer', $pb.PbFieldType.OM, RestOption.getDefault, RestOption.create)
    ..hasRequiredFields = false
  ;

  RestQuizQuestion() : super();
  RestQuizQuestion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RestQuizQuestion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RestQuizQuestion clone() => RestQuizQuestion()..mergeFromMessage(this);
  RestQuizQuestion copyWith(void Function(RestQuizQuestion) updates) => super.copyWith((message) => updates(message as RestQuizQuestion));
  $pb.BuilderInfo get info_ => _i;
  static RestQuizQuestion create() => RestQuizQuestion();
  RestQuizQuestion createEmptyInstance() => create();
  static $pb.PbList<RestQuizQuestion> createRepeated() => $pb.PbList<RestQuizQuestion>();
  static RestQuizQuestion getDefault() => _defaultInstance ??= create()..freeze();
  static RestQuizQuestion _defaultInstance;

  $core.String get question => $_getS(0, '');
  set question($core.String v) { $_setString(0, v); }
  $core.bool hasQuestion() => $_has(0);
  void clearQuestion() => clearField(1);

  $core.String get hint => $_getS(1, '');
  set hint($core.String v) { $_setString(1, v); }
  $core.bool hasHint() => $_has(1);
  void clearHint() => clearField(2);

  $core.List<RestOption> get option => $_getList(2);

  RestOption get answer => $_getN(3);
  set answer(RestOption v) { setField(4, v); }
  $core.bool hasAnswer() => $_has(3);
  void clearAnswer() => clearField(4);
}

class RestOption extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RestOption')
    ..aOS(1, 'value')
    ..hasRequiredFields = false
  ;

  RestOption() : super();
  RestOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RestOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RestOption clone() => RestOption()..mergeFromMessage(this);
  RestOption copyWith(void Function(RestOption) updates) => super.copyWith((message) => updates(message as RestOption));
  $pb.BuilderInfo get info_ => _i;
  static RestOption create() => RestOption();
  RestOption createEmptyInstance() => create();
  static $pb.PbList<RestOption> createRepeated() => $pb.PbList<RestOption>();
  static RestOption getDefault() => _defaultInstance ??= create()..freeze();
  static RestOption _defaultInstance;

  $core.String get value => $_getS(0, '');
  set value($core.String v) { $_setString(0, v); }
  $core.bool hasValue() => $_has(0);
  void clearValue() => clearField(1);
}

class ClassCreationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClassCreationRequest')
    ..a<RestClass>(1, 'class_1', $pb.PbFieldType.OM, RestClass.getDefault, RestClass.create)
    ..hasRequiredFields = false
  ;

  ClassCreationRequest() : super();
  ClassCreationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ClassCreationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ClassCreationRequest clone() => ClassCreationRequest()..mergeFromMessage(this);
  ClassCreationRequest copyWith(void Function(ClassCreationRequest) updates) => super.copyWith((message) => updates(message as ClassCreationRequest));
  $pb.BuilderInfo get info_ => _i;
  static ClassCreationRequest create() => ClassCreationRequest();
  ClassCreationRequest createEmptyInstance() => create();
  static $pb.PbList<ClassCreationRequest> createRepeated() => $pb.PbList<ClassCreationRequest>();
  static ClassCreationRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ClassCreationRequest _defaultInstance;

  RestClass get class_1 => $_getN(0);
  set class_1(RestClass v) { setField(1, v); }
  $core.bool hasClass_1() => $_has(0);
  void clearClass_1() => clearField(1);
}

class ClassCreationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClassCreationResponse')
    ..a<$core.int>(1, 'classUuid', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'secretCode', $pb.PbFieldType.O3)
    ..a<$0.RestStatus>(3, 'error', $pb.PbFieldType.OM, $0.RestStatus.getDefault, $0.RestStatus.create)
    ..hasRequiredFields = false
  ;

  ClassCreationResponse() : super();
  ClassCreationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ClassCreationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ClassCreationResponse clone() => ClassCreationResponse()..mergeFromMessage(this);
  ClassCreationResponse copyWith(void Function(ClassCreationResponse) updates) => super.copyWith((message) => updates(message as ClassCreationResponse));
  $pb.BuilderInfo get info_ => _i;
  static ClassCreationResponse create() => ClassCreationResponse();
  ClassCreationResponse createEmptyInstance() => create();
  static $pb.PbList<ClassCreationResponse> createRepeated() => $pb.PbList<ClassCreationResponse>();
  static ClassCreationResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ClassCreationResponse _defaultInstance;

  $core.int get classUuid => $_get(0, 0);
  set classUuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasClassUuid() => $_has(0);
  void clearClassUuid() => clearField(1);

  $core.int get secretCode => $_get(1, 0);
  set secretCode($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasSecretCode() => $_has(1);
  void clearSecretCode() => clearField(2);

  $0.RestStatus get error => $_getN(2);
  set error($0.RestStatus v) { setField(3, v); }
  $core.bool hasError() => $_has(2);
  void clearError() => clearField(3);
}

class ClassUpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClassUpdateRequest')
    ..a<$core.int>(1, 'classUuid', $pb.PbFieldType.O3)
    ..a<RestClass>(2, 'class_2', $pb.PbFieldType.OM, RestClass.getDefault, RestClass.create)
    ..hasRequiredFields = false
  ;

  ClassUpdateRequest() : super();
  ClassUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ClassUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ClassUpdateRequest clone() => ClassUpdateRequest()..mergeFromMessage(this);
  ClassUpdateRequest copyWith(void Function(ClassUpdateRequest) updates) => super.copyWith((message) => updates(message as ClassUpdateRequest));
  $pb.BuilderInfo get info_ => _i;
  static ClassUpdateRequest create() => ClassUpdateRequest();
  ClassUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<ClassUpdateRequest> createRepeated() => $pb.PbList<ClassUpdateRequest>();
  static ClassUpdateRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ClassUpdateRequest _defaultInstance;

  $core.int get classUuid => $_get(0, 0);
  set classUuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasClassUuid() => $_has(0);
  void clearClassUuid() => clearField(1);

  RestClass get class_2 => $_getN(1);
  set class_2(RestClass v) { setField(2, v); }
  $core.bool hasClass_2() => $_has(1);
  void clearClass_2() => clearField(2);
}

class ClassUuid extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClassUuid')
    ..a<$core.int>(1, 'classUuid', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ClassUuid() : super();
  ClassUuid.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ClassUuid.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ClassUuid clone() => ClassUuid()..mergeFromMessage(this);
  ClassUuid copyWith(void Function(ClassUuid) updates) => super.copyWith((message) => updates(message as ClassUuid));
  $pb.BuilderInfo get info_ => _i;
  static ClassUuid create() => ClassUuid();
  ClassUuid createEmptyInstance() => create();
  static $pb.PbList<ClassUuid> createRepeated() => $pb.PbList<ClassUuid>();
  static ClassUuid getDefault() => _defaultInstance ??= create()..freeze();
  static ClassUuid _defaultInstance;

  $core.int get classUuid => $_get(0, 0);
  set classUuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasClassUuid() => $_has(0);
  void clearClassUuid() => clearField(1);
}

class GetClassesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetClassesResponse')
    ..pc<ClassWithUuid>(1, 'classes', $pb.PbFieldType.PM,ClassWithUuid.create)
    ..hasRequiredFields = false
  ;

  GetClassesResponse() : super();
  GetClassesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetClassesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetClassesResponse clone() => GetClassesResponse()..mergeFromMessage(this);
  GetClassesResponse copyWith(void Function(GetClassesResponse) updates) => super.copyWith((message) => updates(message as GetClassesResponse));
  $pb.BuilderInfo get info_ => _i;
  static GetClassesResponse create() => GetClassesResponse();
  GetClassesResponse createEmptyInstance() => create();
  static $pb.PbList<GetClassesResponse> createRepeated() => $pb.PbList<GetClassesResponse>();
  static GetClassesResponse getDefault() => _defaultInstance ??= create()..freeze();
  static GetClassesResponse _defaultInstance;

  $core.List<ClassWithUuid> get classes => $_getList(0);
}

class ClassWithUuid extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClassWithUuid')
    ..a<$core.int>(1, 'classUuid', $pb.PbFieldType.O3)
    ..a<RestClass>(2, 'class_2', $pb.PbFieldType.OM, RestClass.getDefault, RestClass.create)
    ..hasRequiredFields = false
  ;

  ClassWithUuid() : super();
  ClassWithUuid.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ClassWithUuid.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ClassWithUuid clone() => ClassWithUuid()..mergeFromMessage(this);
  ClassWithUuid copyWith(void Function(ClassWithUuid) updates) => super.copyWith((message) => updates(message as ClassWithUuid));
  $pb.BuilderInfo get info_ => _i;
  static ClassWithUuid create() => ClassWithUuid();
  ClassWithUuid createEmptyInstance() => create();
  static $pb.PbList<ClassWithUuid> createRepeated() => $pb.PbList<ClassWithUuid>();
  static ClassWithUuid getDefault() => _defaultInstance ??= create()..freeze();
  static ClassWithUuid _defaultInstance;

  $core.int get classUuid => $_get(0, 0);
  set classUuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasClassUuid() => $_has(0);
  void clearClassUuid() => clearField(1);

  RestClass get class_2 => $_getN(1);
  set class_2(RestClass v) { setField(2, v); }
  $core.bool hasClass_2() => $_has(1);
  void clearClass_2() => clearField(2);
}

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

