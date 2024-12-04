import 'package:flutter/material.dart';
import 'package:fruit_hup/constants.dart';
import 'package:fruit_hup/core/utils/app_color.dart';
import 'package:fruit_hup/core/utils/app_images.dart';
import 'package:fruit_hup/core/utils/app_text_style.dart';
import 'package:fruit_hup/core/widget/custom_buttom.dart';
import 'package:fruit_hup/core/widget/custom_text_form_field.dart';
import 'package:fruit_hup/features/auth/presentation/views/widget/or_divider.dart';
import 'package:fruit_hup/features/auth/presentation/views/widget/social_login_button.dart';

import 'dont_have_account_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              const CustomTextFormField(
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xffC9CECE),
                ),
                hintText: 'كلمة المرور',
                textInputType: TextInputType.visiblePassword,
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
                onPressed: () {},
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
                onPressed: () {},
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
