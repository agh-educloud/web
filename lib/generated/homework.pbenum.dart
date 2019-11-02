///
//  Generated code. Do not modify.
//  source: homework.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;

import 'package:protobuf/protobuf.dart' as $pb;

class Document_DocumentType extends $pb.ProtobufEnum {
  static const Document_DocumentType DOC = Document_DocumentType._(0, 'DOC');
  static const Document_DocumentType PDF = Document_DocumentType._(1, 'PDF');

  static const $core.List<Document_DocumentType> values = <Document_DocumentType> [
    DOC,
    PDF,
  ];

  static final $core.Map<$core.int, Document_DocumentType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Document_DocumentType valueOf($core.int value) => _byValue[value];

  const Document_DocumentType._($core.int v, $core.String n) : super(v, n);
}

class Photo_PhotoFormat extends $pb.ProtobufEnum {
  static const Photo_PhotoFormat JPG = Photo_PhotoFormat._(0, 'JPG');
  static const Photo_PhotoFormat PNG = Photo_PhotoFormat._(1, 'PNG');

  static const $core.List<Photo_PhotoFormat> values = <Photo_PhotoFormat> [
    JPG,
    PNG,
  ];

  static final $core.Map<$core.int, Photo_PhotoFormat> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Photo_PhotoFormat valueOf($core.int value) => _byValue[value];

  const Photo_PhotoFormat._($core.int v, $core.String n) : super(v, n);
}

