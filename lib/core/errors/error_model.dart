class ErrorModel {
  int code;
  String message;

  ErrorModel({required this.code, required this.message});
  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      code: json['code'],
      message: json['message'],
    );
  }
}
