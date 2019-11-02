///
//  Generated code. Do not modify.
//  source: homework.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'homework.pbenum.dart';
import 'status.pb.dart' as $0;

export 'homework.pbenum.dart';

enum Homework_HomeworkInstruction {
  document, 
  photo, 
  notSet
}

class Homework extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Homework_HomeworkInstruction> _Homework_HomeworkInstructionByTag = {
    2 : Homework_HomeworkInstruction.document,
    3 : Homework_HomeworkInstruction.photo,
    0 : Homework_HomeworkInstruction.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Homework')
    ..a<$core.int>(1, 'homeworkUuid', $pb.PbFieldType.O3)
    ..a<Document>(2, 'document', $pb.PbFieldType.OM, Document.getDefault, Document.create)
    ..a<Photo>(3, 'photo', $pb.PbFieldType.OM, Photo.getDefault, Photo.create)
    ..oo(0, [2, 3])
    ..hasRequiredFields = false
  ;

  Homework() : super();
  Homework.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Homework.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Homework clone() => Homework()..mergeFromMessage(this);
  Homework copyWith(void Function(Homework) updates) => super.copyWith((message) => updates(message as Homework));
  $pb.BuilderInfo get info_ => _i;
  static Homework create() => Homework();
  Homework createEmptyInstance() => create();
  static $pb.PbList<Homework> createRepeated() => $pb.PbList<Homework>();
  static Homework getDefault() => _defaultInstance ??= create()..freeze();
  static Homework _defaultInstance;

  Homework_HomeworkInstruction whichHomeworkInstruction() => _Homework_HomeworkInstructionByTag[$_whichOneof(0)];
  void clearHomeworkInstruction() => clearField($_whichOneof(0));

  $core.int get homeworkUuid => $_get(0, 0);
  set homeworkUuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasHomeworkUuid() => $_has(0);
  void clearHomeworkUuid() => clearField(1);

  Document get document => $_getN(1);
  set document(Document v) { setField(2, v); }
  $core.bool hasDocument() => $_has(1);
  void clearDocument() => clearField(2);

  Photo get photo => $_getN(2);
  set photo(Photo v) { setField(3, v); }
  $core.bool hasPhoto() => $_has(2);
  void clearPhoto() => clearField(3);
}

class Document extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Document')
    ..e<Document_DocumentType>(1, 'documentType', $pb.PbFieldType.OE, Document_DocumentType.DOC, Document_DocumentType.valueOf, Document_DocumentType.values)
    ..a<$core.List<$core.int>>(2, 'document', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Document() : super();
  Document.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Document.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Document clone() => Document()..mergeFromMessage(this);
  Document copyWith(void Function(Document) updates) => super.copyWith((message) => updates(message as Document));
  $pb.BuilderInfo get info_ => _i;
  static Document create() => Document();
  Document createEmptyInstance() => create();
  static $pb.PbList<Document> createRepeated() => $pb.PbList<Document>();
  static Document getDefault() => _defaultInstance ??= create()..freeze();
  static Document _defaultInstance;

  Document_DocumentType get documentType => $_getN(0);
  set documentType(Document_DocumentType v) { setField(1, v); }
  $core.bool hasDocumentType() => $_has(0);
  void clearDocumentType() => clearField(1);

  $core.List<$core.int> get document => $_getN(1);
  set document($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasDocument() => $_has(1);
  void clearDocument() => clearField(2);
}

class Photo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Photo')
    ..e<Photo_PhotoFormat>(1, 'photoFormat', $pb.PbFieldType.OE, Photo_PhotoFormat.JPG, Photo_PhotoFormat.valueOf, Photo_PhotoFormat.values)
    ..a<$core.List<$core.int>>(2, 'photo', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Photo() : super();
  Photo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Photo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Photo clone() => Photo()..mergeFromMessage(this);
  Photo copyWith(void Function(Photo) updates) => super.copyWith((message) => updates(message as Photo));
  $pb.BuilderInfo get info_ => _i;
  static Photo create() => Photo();
  Photo createEmptyInstance() => create();
  static $pb.PbList<Photo> createRepeated() => $pb.PbList<Photo>();
  static Photo getDefault() => _defaultInstance ??= create()..freeze();
  static Photo _defaultInstance;

  Photo_PhotoFormat get photoFormat => $_getN(0);
  set photoFormat(Photo_PhotoFormat v) { setField(1, v); }
  $core.bool hasPhotoFormat() => $_has(0);
  void clearPhotoFormat() => clearField(1);

  $core.List<$core.int> get photo => $_getN(1);
  set photo($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasPhoto() => $_has(1);
  void clearPhoto() => clearField(2);
}

class CreateHomeworkRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateHomeworkRequest')
    ..a<$core.int>(1, 'classUuid', $pb.PbFieldType.O3)
    ..a<Homework>(2, 'homework', $pb.PbFieldType.OM, Homework.getDefault, Homework.create)
    ..hasRequiredFields = false
  ;

  CreateHomeworkRequest() : super();
  CreateHomeworkRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateHomeworkRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateHomeworkRequest clone() => CreateHomeworkRequest()..mergeFromMessage(this);
  CreateHomeworkRequest copyWith(void Function(CreateHomeworkRequest) updates) => super.copyWith((message) => updates(message as CreateHomeworkRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreateHomeworkRequest create() => CreateHomeworkRequest();
  CreateHomeworkRequest createEmptyInstance() => create();
  static $pb.PbList<CreateHomeworkRequest> createRepeated() => $pb.PbList<CreateHomeworkRequest>();
  static CreateHomeworkRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateHomeworkRequest _defaultInstance;

  $core.int get classUuid => $_get(0, 0);
  set classUuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasClassUuid() => $_has(0);
  void clearClassUuid() => clearField(1);

  Homework get homework => $_getN(1);
  set homework(Homework v) { setField(2, v); }
  $core.bool hasHomework() => $_has(1);
  void clearHomework() => clearField(2);
}

class CreateHomeworkResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateHomeworkResponse')
    ..a<$0.Status>(1, 'status', $pb.PbFieldType.OM, $0.Status.getDefault, $0.Status.create)
    ..a<$core.int>(2, 'homeworkUuid', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  CreateHomeworkResponse() : super();
  CreateHomeworkResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateHomeworkResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateHomeworkResponse clone() => CreateHomeworkResponse()..mergeFromMessage(this);
  CreateHomeworkResponse copyWith(void Function(CreateHomeworkResponse) updates) => super.copyWith((message) => updates(message as CreateHomeworkResponse));
  $pb.BuilderInfo get info_ => _i;
  static CreateHomeworkResponse create() => CreateHomeworkResponse();
  CreateHomeworkResponse createEmptyInstance() => create();
  static $pb.PbList<CreateHomeworkResponse> createRepeated() => $pb.PbList<CreateHomeworkResponse>();
  static CreateHomeworkResponse getDefault() => _defaultInstance ??= create()..freeze();
  static CreateHomeworkResponse _defaultInstance;

  $0.Status get status => $_getN(0);
  set status($0.Status v) { setField(1, v); }
  $core.bool hasStatus() => $_has(0);
  void clearStatus() => clearField(1);

  $core.int get homeworkUuid => $_get(1, 0);
  set homeworkUuid($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasHomeworkUuid() => $_has(1);
  void clearHomeworkUuid() => clearField(2);
}

class UpdateHomeworkRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateHomeworkRequest')
    ..a<$core.int>(1, 'classUuid', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'homeworkUuid', $pb.PbFieldType.O3)
    ..a<Homework>(3, 'homework', $pb.PbFieldType.OM, Homework.getDefault, Homework.create)
    ..hasRequiredFields = false
  ;

  UpdateHomeworkRequest() : super();
  UpdateHomeworkRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateHomeworkRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateHomeworkRequest clone() => UpdateHomeworkRequest()..mergeFromMessage(this);
  UpdateHomeworkRequest copyWith(void Function(UpdateHomeworkRequest) updates) => super.copyWith((message) => updates(message as UpdateHomeworkRequest));
  $pb.BuilderInfo get info_ => _i;
  static UpdateHomeworkRequest create() => UpdateHomeworkRequest();
  UpdateHomeworkRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateHomeworkRequest> createRepeated() => $pb.PbList<UpdateHomeworkRequest>();
  static UpdateHomeworkRequest getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateHomeworkRequest _defaultInstance;

  $core.int get classUuid => $_get(0, 0);
  set classUuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasClassUuid() => $_has(0);
  void clearClassUuid() => clearField(1);

  $core.int get homeworkUuid => $_get(1, 0);
  set homeworkUuid($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasHomeworkUuid() => $_has(1);
  void clearHomeworkUuid() => clearField(2);

  Homework get homework => $_getN(2);
  set homework(Homework v) { setField(3, v); }
  $core.bool hasHomework() => $_has(2);
  void clearHomework() => clearField(3);
}

class DeleteHomeworkRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteHomeworkRequest')
    ..a<$core.int>(1, 'classUuid', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'homeworkUuid', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  DeleteHomeworkRequest() : super();
  DeleteHomeworkRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteHomeworkRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteHomeworkRequest clone() => DeleteHomeworkRequest()..mergeFromMessage(this);
  DeleteHomeworkRequest copyWith(void Function(DeleteHomeworkRequest) updates) => super.copyWith((message) => updates(message as DeleteHomeworkRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteHomeworkRequest create() => DeleteHomeworkRequest();
  DeleteHomeworkRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteHomeworkRequest> createRepeated() => $pb.PbList<DeleteHomeworkRequest>();
  static DeleteHomeworkRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteHomeworkRequest _defaultInstance;

  $core.int get classUuid => $_get(0, 0);
  set classUuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasClassUuid() => $_has(0);
  void clearClassUuid() => clearField(1);

  $core.int get homeworkUuid => $_get(1, 0);
  set homeworkUuid($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasHomeworkUuid() => $_has(1);
  void clearHomeworkUuid() => clearField(2);
}

enum HomeworkSolution_HomeworkSolution {
  document, 
  photo, 
  notSet
}

class HomeworkSolution extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, HomeworkSolution_HomeworkSolution> _HomeworkSolution_HomeworkSolutionByTag = {
    2 : HomeworkSolution_HomeworkSolution.document,
    3 : HomeworkSolution_HomeworkSolution.photo,
    0 : HomeworkSolution_HomeworkSolution.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HomeworkSolution')
    ..a<$core.int>(1, 'homeworkUuid', $pb.PbFieldType.O3)
    ..a<Document>(2, 'document', $pb.PbFieldType.OM, Document.getDefault, Document.create)
    ..a<Photo>(3, 'photo', $pb.PbFieldType.OM, Photo.getDefault, Photo.create)
    ..oo(0, [2, 3])
    ..hasRequiredFields = false
  ;

  HomeworkSolution() : super();
  HomeworkSolution.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  HomeworkSolution.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  HomeworkSolution clone() => HomeworkSolution()..mergeFromMessage(this);
  HomeworkSolution copyWith(void Function(HomeworkSolution) updates) => super.copyWith((message) => updates(message as HomeworkSolution));
  $pb.BuilderInfo get info_ => _i;
  static HomeworkSolution create() => HomeworkSolution();
  HomeworkSolution createEmptyInstance() => create();
  static $pb.PbList<HomeworkSolution> createRepeated() => $pb.PbList<HomeworkSolution>();
  static HomeworkSolution getDefault() => _defaultInstance ??= create()..freeze();
  static HomeworkSolution _defaultInstance;

  HomeworkSolution_HomeworkSolution whichHomeworkSolution() => _HomeworkSolution_HomeworkSolutionByTag[$_whichOneof(0)];
  void clearHomeworkSolution() => clearField($_whichOneof(0));

  $core.int get homeworkUuid => $_get(0, 0);
  set homeworkUuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasHomeworkUuid() => $_has(0);
  void clearHomeworkUuid() => clearField(1);

  Document get document => $_getN(1);
  set document(Document v) { setField(2, v); }
  $core.bool hasDocument() => $_has(1);
  void clearDocument() => clearField(2);

  Photo get photo => $_getN(2);
  set photo(Photo v) { setField(3, v); }
  $core.bool hasPhoto() => $_has(2);
  void clearPhoto() => clearField(3);
}

