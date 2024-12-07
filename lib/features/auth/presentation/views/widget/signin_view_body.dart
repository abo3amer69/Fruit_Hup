import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/constants.dart';
import 'package:fruit_hup/core/utils/app_color.dart';
import 'package:fruit_hup/core/utils/app_images.dart';
import 'package:fruit_hup/core/utils/app_text_style.dart';
import 'package:fruit_hup/core/widget/custom_buttom.dart';
import 'package:fruit_hup/core/widget/custom_text_form_field.dart';
import 'package:fruit_hup/core/widget/password_field.dart';
import 'package:fruit_hup/features/auth/presentation/cubits/signin_cubis/signin_cubit.dart';
import 'package:fruit_hup/features/auth/presentation/views/widget/or_divider.dart';
import 'package:fruit_hup/features/auth/presentation/views/widget/social_login_button.dart';

import 'dont_have_account_widget.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              passwordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColors.lightprimaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SigninCubit>().signin(email, password);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: 'تسجيل دخول',
              ),
              const SizedBox(
                height: 33,
              ),
              const DontHaveAnAccountWidget(),
              const SizedBox(
                height: 33,
              ),
              const OrDivider(),
              const SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                onPressed: () {
                  context.read<SigninCubit>().signinWithGoogle();
                },
                image: Assets.imagesGoogleIcon,
                title: 'تسجيل بواسطة جوجل',
              ),
              const SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                  onPressed: () {},
                  image: Assets.imagesApplIcon,
                  title: 'تسجيل بواسطة أبل'),
              const SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                onPressed: () {},
                image: Assets.imagesFacebookIcon,
                title: 'تسجيل بواسطة فيسبوك',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
