import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.textInputType,
      this.suffixIcon});

  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintStyle: TextStyles.bold13.copyWith(
          color: const Color(0xff949D9E),
        ),
        hintText: hintText,
        filled: true,
        fillColor: const Color(0xffF9FAFA),
        border: buildBorde(),
        enabledBorder: buildBorde(),
        focusedBorder: buildBorde(),
      ),
    );
  }

  OutlineInputBorder buildBorde() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        width: 1,
        color: Color(0xffE6E9E9),
      ),
    );
  }
}