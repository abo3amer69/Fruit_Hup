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
      if (e.code == 'weak-password') {
        throw CustomException(message: 'the password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'the account already exists for that email.');
      } else {
        throw CustomException(message: 'An error occurred, please try again.');
      }
    } catch (e) {
      throw CustomException(message: 'An error occurred, please try again.');
    }
  }
}
