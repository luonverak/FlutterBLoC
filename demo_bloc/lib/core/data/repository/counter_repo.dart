import 'package:dartz/dartz.dart';
import 'package:demo_bloc/core/data/repository/repo_response.dart';
import 'package:demo_bloc/core/error/failure.dart';

class CounterRepo {
  Future<Either<Failure, RepoResponse<int>>> increaseCounter(
      {required int counter}) async {
    try {
      final result = counter += 1;
      return Right(RepoResponse(record: result));
    } catch (e) {
      throw e.toString();
    }
  }

  Future<Either<Failure, RepoResponse<int>>> decreaseCounter(
      {required int counter}) async {
    try {
      final result = counter -= 1;
      return Right(RepoResponse(record: result));
    } catch (e) {
      throw e.toString();
    }
  }
}
