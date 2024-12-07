import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hup/core/error/exceptions.dart';
import 'package:fruit_hup/generated/intl/messages_ar.dart';

class FirebaseAuthServices {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}and code: ${e.code}');
      if (e.code == 'weak-password') {
        throw CustomException(message: 'الكلمة السرية ضعيفة');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'هذا البريد الإلكتروني مستخدم بالفعل');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'لا يوجد إتصال بالإنترنت');
      } else {
        throw CustomException(message: 'حدث خطأ, حاول مرة أخرى');
      }
    } catch (e) {
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
      throw CustomException(message: 'حدث خطأ, حاول مرة أخرى');
    }
  }

  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in AuthRepoImpl.signInWithEmailAndPassword: ${e.toString()}and code: ${e.code}');
      if (e.code == 'user-not-found') {
        throw CustomException(
            message: 'البريد الالكتروني او الرقم السري غير صحيح');
      } else if (e.code == 'wrong-password') {
        throw CustomException(
            message: 'البريد الالكتروني او الرقم السري غير صحيح');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'لا يوجد إتصال بالإنترنت');
      } else {
        throw CustomException(message: 'حدث خطأ, حاول مرة أخرى');
      }
    } catch (e) {
      log('Exception in FirebaseAuthServices.signInWithEmailAndPassword: ${e.toString()}');
      throw CustomException(message: 'حدث خطأ, حاول مرة أخرى');
    }
  }
}
