import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/core/services/git_it_services.dart';
import 'package:fruit_hup/core/widget/custom_app_bar.dart';
import 'package:fruit_hup/features/auth/domain/repos/auth_repo.dart';
import 'package:fruit_hup/features/auth/presentation/cubits/cubit/signup_cubit.dart';
import 'package:fruit_hup/features/auth/presentation/views/widget/signup_view_body.dart';
import 'package:fruit_hup/features/auth/presentation/views/widget/signup_view_body_bloc_consumer.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'Signup';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'حساب جديد'),
        body: const SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
