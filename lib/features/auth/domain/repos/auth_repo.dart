import 'package:fruit_hup/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<UserEntity> createUserEmailAndPassword(String email, String password);
}
