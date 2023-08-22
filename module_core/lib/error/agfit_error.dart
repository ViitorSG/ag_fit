import 'package:module_assets/language/strings.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/dio.dart';

class AgFitError {
  final String? details;
  final String message;
  final SnackBarType snackBarType;

  AgFitError({this.details, required this.message, this.snackBarType = SnackBarType.error});

  AgFitError.fromDioException(DioException error,)
      : details = error.response?.data.toString(),
        snackBarType = SnackBarType.error,
        message = _message(error.response?.statusCode);

  static String _message(int? code) {
    if (code == null) return Localization.strings.genericError;
    if (code >= 400) return Localization.strings.genericErrorClient;
    if (code >= 500) return Localization.strings.genericErrorClient;

    return Localization.strings.genericError;
  }

  @override
  String toString() {
    return 'WideError{message: $message, details: $details}';
  }
}
