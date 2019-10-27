///
//  Generated code. Do not modify.
//  source: homework.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

const Homework$json = const {
  '1': 'Homework',
  '2': const [
    const {'1': 'homeworkUuid', '3': 1, '4': 1, '5': 5, '10': 'homeworkUuid'},
    const {'1': 'document', '3': 2, '4': 1, '5': 11, '6': '.Document', '9': 0, '10': 'document'},
    const {'1': 'photo', '3': 3, '4': 1, '5': 11, '6': '.Photo', '9': 0, '10': 'photo'},
  ],
  '8': const [
    const {'1': 'homeworkInstruction'},
  ],
};

const Document$json = const {
  '1': 'Document',
  '2': const [
    const {'1': 'documentType', '3': 1, '4': 1, '5': 14, '6': '.Document.DocumentType', '10': 'documentType'},
    const {'1': 'document', '3': 2, '4': 1, '5': 12, '10': 'document'},
  ],
  '4': const [Document_DocumentType$json],
};

const Document_DocumentType$json = const {
  '1': 'DocumentType',
  '2': const [
    const {'1': 'DOC', '2': 0},
    const {'1': 'PDF', '2': 1},
  ],
};

const Photo$json = const {
  '1': 'Photo',
  '2': const [
    const {'1': 'photoFormat', '3': 1, '4': 1, '5': 14, '6': '.Photo.PhotoFormat', '10': 'photoFormat'},
    const {'1': 'Photo', '3': 2, '4': 1, '5': 12, '10': 'Photo'},
  ],
  '4': const [Photo_PhotoFormat$json],
};

const Photo_PhotoFormat$json = const {
  '1': 'PhotoFormat',
  '2': const [
    const {'1': 'JPG', '2': 0},
    const {'1': 'PNG', '2': 1},
  ],
};

const CreateHomeworkRequest$json = const {
  '1': 'CreateHomeworkRequest',
  '2': const [
    const {'1': 'classUuid', '3': 1, '4': 1, '5': 5, '10': 'classUuid'},
    const {'1': 'homework', '3': 2, '4': 1, '5': 11, '6': '.Homework', '10': 'homework'},
  ],
};

const CreateHomeworkResponse$json = const {
  '1': 'CreateHomeworkResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 11, '6': '.Status', '10': 'status'},
    const {'1': 'homeworkUuid', '3': 2, '4': 1, '5': 5, '10': 'homeworkUuid'},
  ],
};

const UpdateHomeworkRequest$json = const {
  '1': 'UpdateHomeworkRequest',
  '2': const [
    const {'1': 'classUuid', '3': 1, '4': 1, '5': 5, '10': 'classUuid'},
    const {'1': 'homeworkUuid', '3': 2, '4': 1, '5': 5, '10': 'homeworkUuid'},
    const {'1': 'homework', '3': 3, '4': 1, '5': 11, '6': '.Homework', '10': 'homework'},
  ],
};

const DeleteHomeworkRequest$json = const {
  '1': 'DeleteHomeworkRequest',
  '2': const [
    const {'1': 'classUuid', '3': 1, '4': 1, '5': 5, '10': 'classUuid'},
    const {'1': 'homeworkUuid', '3': 2, '4': 1, '5': 5, '10': 'homeworkUuid'},
  ],
};

const HomeworkSolution$json = const {
  '1': 'HomeworkSolution',
  '2': const [
    const {'1': 'homeworkUuid', '3': 1, '4': 1, '5': 5, '10': 'homeworkUuid'},
    const {'1': 'document', '3': 2, '4': 1, '5': 11, '6': '.Document', '9': 0, '10': 'document'},
    const {'1': 'photo', '3': 3, '4': 1, '5': 11, '6': '.Photo', '9': 0, '10': 'photo'},
  ],
  '8': const [
    const {'1': 'homeworkSolution'},
  ],
};

