
import 'package:weather_app/core/api/end_points.dart';

class ErrorModel {
  final String errorMessage;

  ErrorModel({required this.errorMessage,});

  factory ErrorModel.fromjson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      errorMessage: jsonData[ApiKeys.errorMap][ApiKeys.errorMessage],
    );
  }
}
