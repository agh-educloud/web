///
//  Generated code. Do not modify.
//  source: feedback.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;

import 'package:protobuf/protobuf.dart' as $pb;

class Feedback_Rate extends $pb.ProtobufEnum {
  static const Feedback_Rate TERRIBLE = Feedback_Rate._(0, 'TERRIBLE');
  static const Feedback_Rate BAD = Feedback_Rate._(1, 'BAD');
  static const Feedback_Rate OK = Feedback_Rate._(2, 'OK');
  static const Feedback_Rate GOOD = Feedback_Rate._(3, 'GOOD');
  static const Feedback_Rate EXCELLENT = Feedback_Rate._(4, 'EXCELLENT');

  static const $core.List<Feedback_Rate> values = <Feedback_Rate> [
    TERRIBLE,
    BAD,
    OK,
    GOOD,
    EXCELLENT,
  ];

  static final $core.Map<$core.int, Feedback_Rate> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Feedback_Rate valueOf($core.int value) => _byValue[value];

  const Feedback_Rate._($core.int v, $core.String n) : super(v, n);
}

