import 'package:fruit_hup/core/services/firebase_auth_services.dart';
import 'package:fruit_hup/features/auth/data/repos/auth_repo_impl.dart';
import 'package:fruit_hup/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<AuthRepo>(AuthRepoImpl(
    firebaseAuthServices: getIt<FirebaseAuthServices>(),
  ));
}
