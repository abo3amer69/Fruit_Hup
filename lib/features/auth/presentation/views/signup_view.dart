import 'package:flutter/material.dart';
import 'package:fruit_hup/core/widget/custom_app_bar.dart';
import 'package:fruit_hup/features/auth/presentation/views/widget/signup_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'Signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'حساب جديد'),
      body: const SignUpViewBody(),
    );
  }
}
