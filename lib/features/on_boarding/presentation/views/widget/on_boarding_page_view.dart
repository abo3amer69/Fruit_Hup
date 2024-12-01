import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/app_images.dart';
import 'package:fruit_hup/features/on_boarding/presentation/views/widget/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(
          image: Assets.imagesPageViewItem1Image,
          backgroundoimage: Assets.imagesPageViewItem1BackgroundImage,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبًا بك في'),
              Text('Fruit'),
              Text('HUP'),
            ],
          ),
        ),
        PageViewItem(
          image: Assets.imagesPageViewItem2Image,
          backgroundoimage: Assets.imagesPageViewItem2BackgroundImage,
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Text(
            'ابحث و تسوق',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff0C0D0E),
              fontSize: 24,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}
