// ignore_for_file: public_member_api_docs, sort_constructors_first

class ResultModel {}

class ErrorModel extends ResultModel {
  String errorMessage;
  ErrorModel({
    required this.errorMessage,
  });
}

class ExceptionModel extends ResultModel {
  String exceptionMessage;
  ExceptionModel({
    required this.exceptionMessage,
  });
}

class SuccessSignUpModel extends ResultModel {
  String successMessage;
  SuccessSignUpModel({
    required this.successMessage,
  });
}

class SuccessCreateProjectModel extends ResultModel {
  String successMessage;
  SuccessCreateProjectModel({
    required this.successMessage,
  });
}

class SuccessCreateTasksModel extends ResultModel {
  String successMessage;
  SuccessCreateTasksModel({
    required this.successMessage,
  });
}

class SuccessGetProjectModel<T> extends ResultModel {
  T getdata;
  SuccessGetProjectModel({
    required this.getdata,
  });
}

class Listof<T extends ResultModel> extends ResultModel {
  List<T> data;
  Listof({
    required this.data,
  });
}
