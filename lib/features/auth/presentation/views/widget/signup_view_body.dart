import 'package:flutter/material.dart';
import 'package:fruit_hup/constants.dart';
import 'package:fruit_hup/core/widget/custom_buttom.dart';
import 'package:fruit_hup/core/widget/custom_text_form_field.dart';
import 'package:fruit_hup/features/auth/presentation/views/widget/have_anaccount.dart';
import 'package:fruit_hup/features/auth/presentation/views/widget/terms_and_conditions.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(
              hintText: 'الاسم كامل',
              textInputType: TextInputType.name,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(
              hintText: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(
              suffixIcon: Icon(
                Icons.remove_red_eye,
              ),
              hintText: ' كلمة المرور',
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 16,
            ),
            const TermsAndConditionsWidget(),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              onPressed: () {},
              text: 'انشاء حساب جديد',
            ),
            const SizedBox(
              height: 26,
            ),
            const HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
