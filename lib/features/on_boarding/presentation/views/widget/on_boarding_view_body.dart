import 'package:flutter/material.dart';
import 'package:fruit_hup/features/on_boarding/presentation/views/widget/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: OnBoardingPageView()),
      ],
    );
  }
}
