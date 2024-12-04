import 'package:flutter/material.dart';
import 'package:fruit_hup/constants.dart';
import 'package:fruit_hup/core/widget/custom_text_form_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: KHorizentalPadding),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hintText: 'الاسم كامل',
              textInputType: TextInputType.name,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hintText: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              suffixIcon: Icon(
                Icons.remove_red_eye,
              ),
              hintText: ' كلمة المرور',
              textInputType: TextInputType.visiblePassword,
            ),
          ],
        ),
      ),
    );
  }
}
