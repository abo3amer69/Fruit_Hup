import 'dart:convert';

import 'package:fruit_hup/constants.dart';
import 'package:fruit_hup/core/services/shered_preferances_singelton.dart';
import 'package:fruit_hup/features/auth/data/model/user_model.dart';
import 'package:fruit_hup/features/auth/domain/entites/user_entity.dart';

UserEntity getUser() {
  var jsonString = prefs.getString(KuserData);
  var userEntity = UserModel.fromJson(jsonDecode(jsonString));
  return userEntity;
}
