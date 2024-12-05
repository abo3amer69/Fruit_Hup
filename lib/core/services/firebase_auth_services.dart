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
        throw CustomException(message: 'الكلمة السرية ضعيفة');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'هذا البريد الإلكتروني مستخدم بالفعل');
      } else {
        throw CustomException(message: 'حدث خطأ, حاول مرة أخرى');
      }
    } catch (e) {
      throw CustomException(message: 'حدث خطأ, حاول مرة أخرى');
    }
  }
}
