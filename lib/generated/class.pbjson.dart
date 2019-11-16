///
//  Generated code. Do not modify.
//  source: class.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

const RestClass$json = const {
  '1': 'RestClass',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'topic', '3': 2, '4': 1, '5': 9, '10': 'topic'},
    const {'1': 'quizQuestion', '3': 3, '4': 3, '5': 11, '6': '.QuizQuestionCreation', '10': 'quizQuestion'},
    const {'1': 'homework', '3': 4, '4': 3, '5': 11, '6': '.RestHomework', '10': 'homework'},
    const {'1': 'presentation', '3': 5, '4': 1, '5': 12, '10': 'presentation'},
  ],
};

const QuizQuestionCreation$json = const {
  '1': 'QuizQuestionCreation',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 5, '10': 'uuid'},
    const {'1': 'question', '3': 2, '4': 1, '5': 11, '6': '.RestQuizQuestion', '10': 'question'},
  ],
};

const RestQuizQuestion$json = const {
  '1': 'RestQuizQuestion',
  '2': const [
    const {'1': 'question', '3': 1, '4': 1, '5': 9, '10': 'question'},
    const {'1': 'option', '3': 3, '4': 3, '5': 11, '6': '.RestOption', '10': 'option'},
    const {'1': 'hint', '3': 2, '4': 1, '5': 9, '10': 'hint'},
    const {'1': 'answer', '3': 4, '4': 1, '5': 11, '6': '.RestOption', '10': 'answer'},
  ],
};

const RestOption$json = const {
  '1': 'RestOption',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

const ClassCreationRequest$json = const {
  '1': 'ClassCreationRequest',
  '2': const [
    const {'1': 'class', '3': 1, '4': 1, '5': 11, '6': '.RestClass', '10': 'class'},
  ],
};

const ClassCreationResponse$json = const {
  '1': 'ClassCreationResponse',
  '2': const [
    const {'1': 'classUuid', '3': 1, '4': 1, '5': 5, '10': 'classUuid'},
    const {'1': 'secretCode', '3': 2, '4': 1, '5': 5, '10': 'secretCode'},
    const {'1': 'error', '3': 3, '4': 1, '5': 11, '6': '.RestStatus', '10': 'error'},
  ],
};

const ClassUpdateRequest$json = const {
  '1': 'ClassUpdateRequest',
  '2': const [
    const {'1': 'classUuid', '3': 1, '4': 1, '5': 5, '10': 'classUuid'},
    const {'1': 'class', '3': 2, '4': 1, '5': 11, '6': '.RestClass', '10': 'class'},
  ],
};

const ClassUuid$json = const {
  '1': 'ClassUuid',
  '2': const [
    const {'1': 'classUuid', '3': 1, '4': 1, '5': 5, '10': 'classUuid'},
  ],
};

const GetClassesResponse$json = const {
  '1': 'GetClassesResponse',
  '2': const [
    const {'1': 'classes', '3': 1, '4': 3, '5': 11, '6': '.ClassWithUuid', '10': 'classes'},
  ],
};

const ClassWithUuid$json = const {
  '1': 'ClassWithUuid',
  '2': const [
    const {'1': 'classUuid', '3': 1, '4': 1, '5': 5, '10': 'classUuid'},
    const {'1': 'class', '3': 2, '4': 1, '5': 11, '6': '.RestClass', '10': 'class'},
  ],
};

const Empty$json = const {
  '1': 'Empty',
};

