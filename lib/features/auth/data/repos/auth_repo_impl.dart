import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hup/constants.dart';
import 'package:fruit_hup/core/error/exceptions.dart';
import 'package:fruit_hup/core/error/failure.dart';
import 'package:fruit_hup/core/services/database_services.dart';

import 'package:fruit_hup/core/services/firebase_auth_services.dart';
import 'package:fruit_hup/core/services/shered_preferances_singelton.dart';
import 'package:fruit_hup/core/utils/backend_endpoint.dart';
import 'package:fruit_hup/features/auth/data/model/user_model.dart';
import 'package:fruit_hup/features/auth/domain/entites/user_entity.dart';
import 'package:fruit_hup/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;

  final DatabaseServices databaseServices;

  AuthRepoImpl(
      {required this.databaseServices, required this.firebaseAuthServices});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    User? user;
    try {
      user = await firebaseAuthServices.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserEntity(
        name: name,
        email: email,
        uId: user.uid,
      );
      await addUserData(user: userEntity);
      return Right(userEntity);
    } on CustomException catch (e) {
      await deletUser(user);
      return Left(ServerFailure(e.message));
    } catch (e) {
      if (user != null) {
        await firebaseAuthServices.deletUser();
      }
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
      return Left(
        ServerFailure('حدث خطأ ما, حاول مرة أخرى'),
      );
    }
  }

  Future<void> deletUser(User? user) async {
    if (user != null) {
      await firebaseAuthServices.deletUser();
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthServices.signInWithEmailAndPassword(
          email: email, password: password);
      var userEntity = await getUserData(uId: user.uid);
      return Right(
        userEntity,
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
    User? user;
    try {
      user = await firebaseAuthServices.signInWithGoogle();
      var UserEntity = UserModel.fromFirebaseUser(user);
      var isuerExist = await databaseServices.checjIfDataExist(
          path: BackendEndpoint.isUserExist, documentId: user.uid);
      if (isuerExist) {
        await getUserData(uId: user.uid);
      } else {
        await addUserData(user: UserEntity);
      }
      return Right(UserEntity);
    } catch (e) {
      await deletUser(user);
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
    User? user;
    try {
      user = await firebaseAuthServices.signInWithFacebook();
      var UserEntity = UserModel.fromFirebaseUser(user);
      var isuerExist = await databaseServices.checjIfDataExist(
          path: BackendEndpoint.isUserExist, documentId: user.uid);
      if (isuerExist) {
        await getUserData(uId: user.uid);
      } else {
        await addUserData(user: UserEntity);
      }
      return Right(UserEntity);
    } catch (e) {
      await deletUser(user);
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
      return Left(
        ServerFailure(
          'حدث خطأ ما, حاول مرة أخرى',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithApple() async {
    User? user;
    try {
      user = await firebaseAuthServices.signInWithApple();
      var UserEntity = UserModel.fromFirebaseUser(user);
      await addUserData(user: UserEntity);
      return Right(UserEntity);
    } catch (e) {
      await deletUser(user);
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
      return Left(
        ServerFailure(
          'حدث خطأ ما, حاول مرة أخرى',
        ),
      );
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await databaseServices.addData(
      path: BackendEndpoint.addUserData,
      data: UserModel.fromEntity(user).toMap(),
      //documentId: user.uId,
    );
  }

  @override
  Future<UserEntity> getUserData({required String uId}) async {
    var userData = await databaseServices.getData(
        path: BackendEndpoint.getUserData, documentId: uId);
    return UserModel.fromJson(userData);
  }

  @override
  Future saveUserData({required UserEntity user}) async {
    var jsonData = jsonDecode(
      UserModel.fromEntity(user).toMap(),
    );
    await prefs.setString(KuserData, jsonData);
  }
}
