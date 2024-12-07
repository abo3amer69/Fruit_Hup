import 'package:dartz/dartz.dart';
import 'package:fruit_hup/core/error/failure.dart';
import 'package:fruit_hup/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);

  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password, String name);
}
