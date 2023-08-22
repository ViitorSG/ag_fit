import 'package:module_core/error/agfit_error.dart';
import 'package:module_external_dependencies/dartz.dart';
import 'package:module_external_dependencies/dio.dart';

Future<Either<AgFitError, T>> executeWithCatch<T>(Future Function() func) async {
  try {
    return Right(await func.call());
  } on DioException catch (error) {
    return Left(AgFitError.fromDioException(error));
  }
}
