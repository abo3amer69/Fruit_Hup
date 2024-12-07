import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/core/services/git_it_services.dart';
import 'package:fruit_hup/core/utils/app_text_style.dart';
import 'package:fruit_hup/core/widget/custom_app_bar.dart';
import 'package:fruit_hup/features/auth/presentation/cubits/signin_cubis/signin_cubit.dart';
import 'package:fruit_hup/features/auth/presentation/views/widget/signin_view_body.dart';

import '../../domain/repos/auth_repo.dart';

class SignView extends StatelessWidget {
  const SignView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(
        getIt.get<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'تسجيل دخول'),
        body: const SigninViewBody(),
      ),
    );
  }
}
