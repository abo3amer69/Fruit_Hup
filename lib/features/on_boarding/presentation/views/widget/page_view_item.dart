import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hup/constants.dart';
import 'package:fruit_hup/core/services/shered_preferances_singelton.dart';
import 'package:fruit_hup/core/utils/app_images.dart';
import 'package:fruit_hup/core/utils/app_text_style.dart';
import 'package:fruit_hup/features/auth/presentation/views/sign_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroundoimage,
      required this.subtitle,
      required this.title,
      required this.isVisible});

  final String image, backgroundoimage;
  final String subtitle;
  final Widget title;

  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(children: [
            Positioned.fill(
              child: SvgPicture.asset(
                backgroundoimage,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: SvgPicture.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Visibility(
              visible: isVisible,
              child: GestureDetector(
                onTap: () {
                  prefs.setBool(KisOnBoardingViewSeen, true);
                  Navigator.of(context)
                      .pushReplacementNamed(SignView.routeName);
                },
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Text(
                    'تخط',
                    style: TextStyles.regular13.copyWith(
                      color: const Color(
                        0xff949D9E,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 37,
          ),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold13.copyWith(
              color: const Color(0xff4E5456),
            ),
          ),
        ),
      ],
    );
  }
}
