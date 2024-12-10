import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/app_text_style.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'الاكثر مبيعا',
          textAlign: TextAlign.right,
          style: TextStyles.bold16,
        ),
        const Spacer(),
        Text(
          'المزيد',
          textAlign: TextAlign.right,
          style: TextStyles.regular13.copyWith(
            color: const Color(0xff949D9E),
          ),
        ),
      ],
    );
  }
}
