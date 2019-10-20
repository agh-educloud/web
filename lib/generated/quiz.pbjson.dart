///
//  Generated code. Do not modify.
//  source: quiz.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

const QuizQuestion$json = const {
  '1': 'QuizQuestion',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 5, '10': 'uuid'},
    const {'1': 'question', '3': 2, '4': 1, '5': 9, '10': 'question'},
    const {'1': 'hint', '3': 3, '4': 1, '5': 9, '10': 'hint'},
    const {
      '1': 'option',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.Option',
      '10': 'option'
    },
  ],
};

const Option$json = const {
  '1': 'Option',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

const QuizQuestionCreation$json = const {
  '1': 'QuizQuestionCreation',
  '2': const [
    const {
      '1': 'quizQuestion',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.QuizQuestion',
      '10': 'quizQuestion'
    },
    const {
      '1': 'answer',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Option',
      '10': 'answer'
    },
  ],
};

const QuizQuestionAnswer$json = const {
  '1': 'QuizQuestionAnswer',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 5, '10': 'uuid'},
    const {
      '1': 'answer',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Option',
      '10': 'answer'
    },
  ],
};

const QuizQuestionResponse$json = const {
  '1': 'QuizQuestionResponse',
  '2': const [
    const {'1': 'questionUuid', '3': 1, '4': 1, '5': 5, '10': 'questionUuid'},
    const {
      '1': 'correctAnswer',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Option',
      '10': 'correctAnswer'
    },
  ],
};

const QuizQuestionStatistics$json = const {
  '1': 'QuizQuestionStatistics',
  '2': const [
    const {'1': 'questionUuid', '3': 1, '4': 1, '5': 5, '10': 'questionUuid'},
    const {
      '1': 'percentageOfCorrectAnswers',
      '3': 2,
      '4': 1,
      '5': 2,
      '10': 'percentageOfCorrectAnswers'
    },
    const {'1': 'participants', '3': 3, '4': 1, '5': 5, '10': 'participants'},
  ],
};
