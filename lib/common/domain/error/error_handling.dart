import 'package:dartz/dartz.dart';
import 'package:test_app/common/domain/error/app_failure.dart';

typedef EitherAppFailureOr<T> = Future<Either<AppFailure, T>>;
