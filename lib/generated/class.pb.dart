///
//  Generated code. Do not modify.
//  source: class.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'homework.pb.dart' as $5;
import 'quiz.pb.dart' as $4;
import 'status.pb.dart' as $0;
import 'user.pb.dart' as $1;

class Class extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Class')
    ..aOS(1, 'name')
    ..aOS(2, 'topic')
    ..pc<$4.QuizQuestion>(
        3, 'quizQuestion', $pb.PbFieldType.PM, $4.QuizQuestion.create)
    ..pc<$5.Homework>(4, 'homework', $pb.PbFieldType.PM, $5.Homework.create)
    ..a<$core.List<$core.int>>(5, 'presentation', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  Class() : super();

  Class.fromBuffer($core.List<$core.int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);

  Class.fromJson($core.String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);

  Class clone() => Class()..mergeFromMessage(this);

  Class copyWith(void Function(Class) updates) =>
      super.copyWith((message) => updates(message as Class));

  $pb.BuilderInfo get info_ => _i;

  static Class create() => Class();

  Class createEmptyInstance() => create();

  static $pb.PbList<Class> createRepeated() => $pb.PbList<Class>();

  static Class getDefault() => _defaultInstance ??= create()..freeze();
  static Class _defaultInstance;

  $core.String get name => $_getS(0, '');

  set name($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasName() => $_has(0);

  void clearName() => clearField(1);

  $core.String get topic => $_getS(1, '');

  set topic($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasTopic() => $_has(1);

  void clearTopic() => clearField(2);

  $core.List<$4.QuizQuestion> get quizQuestion => $_getList(2);

  $core.List<$5.Homework> get homework => $_getList(3);

  $core.List<$core.int> get presentation => $_getN(4);

  set presentation($core.List<$core.int> v) {
    $_setBytes(4, v);
  }

  $core.bool hasPresentation() => $_has(4);

  void clearPresentation() => clearField(5);
}

class ClassCreationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClassCreationRequest')
    ..a<Class>(1, 'class_1', $pb.PbFieldType.OM, Class.getDefault, Class.create)
    ..hasRequiredFields = false;

  ClassCreationRequest() : super();

  ClassCreationRequest.fromBuffer($core.List<$core.int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);

  ClassCreationRequest.fromJson($core.String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);

  ClassCreationRequest clone() =>
      ClassCreationRequest()..mergeFromMessage(this);

  ClassCreationRequest copyWith(void Function(ClassCreationRequest) updates) =>
      super.copyWith((message) => updates(message as ClassCreationRequest));

  $pb.BuilderInfo get info_ => _i;

  static ClassCreationRequest create() => ClassCreationRequest();

  ClassCreationRequest createEmptyInstance() => create();

  static $pb.PbList<ClassCreationRequest> createRepeated() =>
      $pb.PbList<ClassCreationRequest>();

  static ClassCreationRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ClassCreationRequest _defaultInstance;

  Class get class_1 => $_getN(0);

  set class_1(Class v) {
    setField(1, v);
  }

  $core.bool hasClass_1() => $_has(0);

  void clearClass_1() => clearField(1);
}

class ClassCreationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClassCreationResponse')
    ..a<$core.int>(1, 'classUuid', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'secretCode', $pb.PbFieldType.O3)
    ..a<$0.Status>(
        3, 'error', $pb.PbFieldType.OM, $0.Status.getDefault, $0.Status.create)
    ..hasRequiredFields = false;

  ClassCreationResponse() : super();

  ClassCreationResponse.fromBuffer($core.List<$core.int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);

  ClassCreationResponse.fromJson($core.String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);

  ClassCreationResponse clone() =>
      ClassCreationResponse()..mergeFromMessage(this);

  ClassCreationResponse copyWith(
          void Function(ClassCreationResponse) updates) =>
      super.copyWith((message) => updates(message as ClassCreationResponse));

  $pb.BuilderInfo get info_ => _i;

  static ClassCreationResponse create() => ClassCreationResponse();

  ClassCreationResponse createEmptyInstance() => create();

  static $pb.PbList<ClassCreationResponse> createRepeated() =>
      $pb.PbList<ClassCreationResponse>();

  static ClassCreationResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ClassCreationResponse _defaultInstance;

  $core.int get classUuid => $_get(0, 0);

  set classUuid($core.int v) {
    $_setSignedInt32(0, v);
  }

  $core.bool hasClassUuid() => $_has(0);

  void clearClassUuid() => clearField(1);

  $core.int get secretCode => $_get(1, 0);

  set secretCode($core.int v) {
    $_setSignedInt32(1, v);
  }

  $core.bool hasSecretCode() => $_has(1);

  void clearSecretCode() => clearField(2);

  $0.Status get error => $_getN(2);

  set error($0.Status v) {
    setField(3, v);
  }

  $core.bool hasError() => $_has(2);

  void clearError() => clearField(3);
}

class ClassUpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClassUpdateRequest')
    ..a<$core.int>(1, 'classUuid', $pb.PbFieldType.O3)
    ..a<Class>(2, 'class_2', $pb.PbFieldType.OM, Class.getDefault, Class.create)
    ..hasRequiredFields = false;

  ClassUpdateRequest() : super();

  ClassUpdateRequest.fromBuffer($core.List<$core.int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);

  ClassUpdateRequest.fromJson($core.String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);

  ClassUpdateRequest clone() => ClassUpdateRequest()..mergeFromMessage(this);

  ClassUpdateRequest copyWith(void Function(ClassUpdateRequest) updates) =>
      super.copyWith((message) => updates(message as ClassUpdateRequest));

  $pb.BuilderInfo get info_ => _i;

  static ClassUpdateRequest create() => ClassUpdateRequest();

  ClassUpdateRequest createEmptyInstance() => create();

  static $pb.PbList<ClassUpdateRequest> createRepeated() =>
      $pb.PbList<ClassUpdateRequest>();

  static ClassUpdateRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ClassUpdateRequest _defaultInstance;

  $core.int get classUuid => $_get(0, 0);

  set classUuid($core.int v) {
    $_setSignedInt32(0, v);
  }

  $core.bool hasClassUuid() => $_has(0);

  void clearClassUuid() => clearField(1);

  Class get class_2 => $_getN(1);

  set class_2(Class v) {
    setField(2, v);
  }

  $core.bool hasClass_2() => $_has(1);

  void clearClass_2() => clearField(2);
}

class ClassDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClassDeleteRequest')
    ..a<$core.int>(1, 'classUuid', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  ClassDeleteRequest() : super();

  ClassDeleteRequest.fromBuffer($core.List<$core.int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);

  ClassDeleteRequest.fromJson($core.String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);

  ClassDeleteRequest clone() => ClassDeleteRequest()..mergeFromMessage(this);

  ClassDeleteRequest copyWith(void Function(ClassDeleteRequest) updates) =>
      super.copyWith((message) => updates(message as ClassDeleteRequest));

  $pb.BuilderInfo get info_ => _i;

  static ClassDeleteRequest create() => ClassDeleteRequest();

  ClassDeleteRequest createEmptyInstance() => create();

  static $pb.PbList<ClassDeleteRequest> createRepeated() =>
      $pb.PbList<ClassDeleteRequest>();

  static ClassDeleteRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ClassDeleteRequest _defaultInstance;

  $core.int get classUuid => $_get(0, 0);

  set classUuid($core.int v) {
    $_setSignedInt32(0, v);
  }

  $core.bool hasClassUuid() => $_has(0);

  void clearClassUuid() => clearField(1);
}

class ClassStartRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClassStartRequest')
    ..a<$core.int>(1, 'classUuid', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  ClassStartRequest() : super();

  ClassStartRequest.fromBuffer($core.List<$core.int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);

  ClassStartRequest.fromJson($core.String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);

  ClassStartRequest clone() => ClassStartRequest()..mergeFromMessage(this);

  ClassStartRequest copyWith(void Function(ClassStartRequest) updates) =>
      super.copyWith((message) => updates(message as ClassStartRequest));

  $pb.BuilderInfo get info_ => _i;

  static ClassStartRequest create() => ClassStartRequest();

  ClassStartRequest createEmptyInstance() => create();

  static $pb.PbList<ClassStartRequest> createRepeated() =>
      $pb.PbList<ClassStartRequest>();

  static ClassStartRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ClassStartRequest _defaultInstance;

  $core.int get classUuid => $_get(0, 0);

  set classUuid($core.int v) {
    $_setSignedInt32(0, v);
  }

  $core.bool hasClassUuid() => $_has(0);

  void clearClassUuid() => clearField(1);
}

class ClassEndRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClassEndRequest')
    ..a<$core.int>(1, 'classUuid', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  ClassEndRequest() : super();

  ClassEndRequest.fromBuffer($core.List<$core.int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);

  ClassEndRequest.fromJson($core.String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);

  ClassEndRequest clone() => ClassEndRequest()..mergeFromMessage(this);

  ClassEndRequest copyWith(void Function(ClassEndRequest) updates) =>
      super.copyWith((message) => updates(message as ClassEndRequest));

  $pb.BuilderInfo get info_ => _i;

  static ClassEndRequest create() => ClassEndRequest();

  ClassEndRequest createEmptyInstance() => create();

  static $pb.PbList<ClassEndRequest> createRepeated() =>
      $pb.PbList<ClassEndRequest>();

  static ClassEndRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ClassEndRequest _defaultInstance;

  $core.int get classUuid => $_get(0, 0);

  set classUuid($core.int v) {
    $_setSignedInt32(0, v);
  }

  $core.bool hasClassUuid() => $_has(0);

  void clearClassUuid() => clearField(1);
}

class JoinClassRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JoinClassRequest')
    ..a<$core.int>(1, 'secretCode', $pb.PbFieldType.O3)
    ..a<$1.User>(
        2, 'user', $pb.PbFieldType.OM, $1.User.getDefault, $1.User.create)
    ..hasRequiredFields = false;

  JoinClassRequest() : super();

  JoinClassRequest.fromBuffer($core.List<$core.int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);

  JoinClassRequest.fromJson($core.String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);

  JoinClassRequest clone() => JoinClassRequest()..mergeFromMessage(this);

  JoinClassRequest copyWith(void Function(JoinClassRequest) updates) =>
      super.copyWith((message) => updates(message as JoinClassRequest));

  $pb.BuilderInfo get info_ => _i;

  static JoinClassRequest create() => JoinClassRequest();

  JoinClassRequest createEmptyInstance() => create();

  static $pb.PbList<JoinClassRequest> createRepeated() =>
      $pb.PbList<JoinClassRequest>();

  static JoinClassRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static JoinClassRequest _defaultInstance;

  $core.int get secretCode => $_get(0, 0);

  set secretCode($core.int v) {
    $_setSignedInt32(0, v);
  }

  $core.bool hasSecretCode() => $_has(0);

  void clearSecretCode() => clearField(1);

  $1.User get user => $_getN(1);

  set user($1.User v) {
    setField(2, v);
  }

  $core.bool hasUser() => $_has(1);

  void clearUser() => clearField(2);
}

enum Assigment_Event { quizQuestion, homework, notSet }

class Assigment extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Assigment_Event> _Assigment_EventByTag = {
    1: Assigment_Event.quizQuestion,
    2: Assigment_Event.homework,
    0: Assigment_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Assigment')
    ..a<$4.QuizQuestion>(1, 'quizQuestion', $pb.PbFieldType.OM,
        $4.QuizQuestion.getDefault, $4.QuizQuestion.create)
    ..a<$5.Homework>(2, 'homework', $pb.PbFieldType.OM, $5.Homework.getDefault,
        $5.Homework.create)
    ..oo(0, [1, 2])
    ..hasRequiredFields = false;

  Assigment() : super();

  Assigment.fromBuffer($core.List<$core.int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);

  Assigment.fromJson($core.String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);

  Assigment clone() => Assigment()..mergeFromMessage(this);

  Assigment copyWith(void Function(Assigment) updates) =>
      super.copyWith((message) => updates(message as Assigment));

  $pb.BuilderInfo get info_ => _i;

  static Assigment create() => Assigment();

  Assigment createEmptyInstance() => create();

  static $pb.PbList<Assigment> createRepeated() => $pb.PbList<Assigment>();

  static Assigment getDefault() => _defaultInstance ??= create()..freeze();
  static Assigment _defaultInstance;

  Assigment_Event whichEvent() => _Assigment_EventByTag[$_whichOneof(0)];

  void clearEvent() => clearField($_whichOneof(0));

  $4.QuizQuestion get quizQuestion => $_getN(0);

  set quizQuestion($4.QuizQuestion v) {
    setField(1, v);
  }

  $core.bool hasQuizQuestion() => $_has(0);

  void clearQuizQuestion() => clearField(1);

  $5.Homework get homework => $_getN(1);

  set homework($5.Homework v) {
    setField(2, v);
  }

  $core.bool hasHomework() => $_has(1);

  void clearHomework() => clearField(2);
}

class JoinAssigmentLoopRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JoinAssigmentLoopRequest')
    ..a<$1.User>(
        1, 'user', $pb.PbFieldType.OM, $1.User.getDefault, $1.User.create)
    ..hasRequiredFields = false;

  JoinAssigmentLoopRequest() : super();

  JoinAssigmentLoopRequest.fromBuffer($core.List<$core.int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);

  JoinAssigmentLoopRequest.fromJson($core.String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);

  JoinAssigmentLoopRequest clone() =>
      JoinAssigmentLoopRequest()..mergeFromMessage(this);

  JoinAssigmentLoopRequest copyWith(
          void Function(JoinAssigmentLoopRequest) updates) =>
      super.copyWith((message) => updates(message as JoinAssigmentLoopRequest));

  $pb.BuilderInfo get info_ => _i;

  static JoinAssigmentLoopRequest create() => JoinAssigmentLoopRequest();

  JoinAssigmentLoopRequest createEmptyInstance() => create();

  static $pb.PbList<JoinAssigmentLoopRequest> createRepeated() =>
      $pb.PbList<JoinAssigmentLoopRequest>();

  static JoinAssigmentLoopRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static JoinAssigmentLoopRequest _defaultInstance;

  $1.User get user => $_getN(0);

  set user($1.User v) {
    setField(1, v);
  }

  $core.bool hasUser() => $_has(0);

  void clearUser() => clearField(1);
}
