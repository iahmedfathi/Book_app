class ErrorModel {
  final int? statusCode;
  final String errorMessage;

  ErrorModel({this.statusCode, required this.errorMessage});
  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      statusCode: jsonData["status"],
      errorMessage: jsonData["message"],
    );
  }
}
