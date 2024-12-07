import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruit_hup/core/error/exceptions.dart';
import 'package:fruit_hup/core/error/failure.dart';

import 'package:fruit_hup/core/services/firebase_auth_services.dart';
import 'package:fruit_hup/features/auth/data/model/user_model.dart';
import 'package:fruit_hup/features/auth/domain/entites/user_entity.dart';
import 'package:fruit_hup/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;

  AuthRepoImpl({required this.firebaseAuthServices});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthServices.createUserWithEmailAndPassword(
          email: email, password: password);
      return Right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return Left(
        ServerFailure(e.message),
      );
    } catch (e) {
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
      return Left(
        ServerFailure('حدث خطأ ما, حاول مرة أخرى'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthServices.signInWithEmailAndPassword(
          email: email, password: password);
      return Right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return Left(
        ServerFailure(e.message),
      );
    } catch (e) {
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
      return Left(
        ServerFailure(
          'حدث خطأ ما, حاول مرة أخرى',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithGoogle() async {
    try {
      var user = await firebaseAuthServices.signInWithGoogle();
      return Right(
        UserModel.fromFirebaseUser(user),
      );
    } catch (e) {
      log('Exception in AuthRepoImpl.signinWithGoogle: ${e.toString()}');
      return Left(
        ServerFailure(
          'حدث خطأ ما, حاول مرة أخرى',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithFacebook() async {
    try {
      var user = await firebaseAuthServices.signInWithFacebook();
      return Right(
        UserModel.fromFirebaseUser(user),
      );
    } catch (e) {
      log('Exception in AuthRepoImpl.signinWithGoogle: ${e.toString()}');
      return Left(
        ServerFailure(
          'حدث خطأ ما, حاول مرة أخرى',
        ),
      );
    }
  }
}
