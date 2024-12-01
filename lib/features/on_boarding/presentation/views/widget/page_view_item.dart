import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hup/core/utils/app_images.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroundoimage,
      required this.subtitle,
      required this.title});

  final String image, backgroundoimage;
  final String subtitle;
  final Widget title;

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
            const Padding(
              padding: EdgeInsets.all(18),
              child: Text('تخط'),
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
