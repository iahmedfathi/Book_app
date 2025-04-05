import 'package:bookly/core/api/end_pointes.dart';

class ErrorModel {
  final int? statusCode;
  final String errorMessage;

  ErrorModel({this.statusCode, required this.errorMessage});
  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      statusCode: jsonData["code"],
      errorMessage: jsonData[ApiKey.errorMessage],
    );
  }
}
