import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/app_color.dart';
import 'package:fruit_hup/core/utils/app_images.dart';
import 'package:fruit_hup/core/utils/app_text_style.dart';
import 'package:fruit_hup/features/on_boarding/presentation/views/widget/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: Assets.imagesPageViewItem1Image,
          backgroundoimage: Assets.imagesPageViewItem1BackgroundImage,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'مرحبًا بك في',
                style: TextStyles.bold23,
              ),
              Text(
                ' HUP',
                style:
                    TextStyles.bold23.copyWith(color: AppColors.secondaryColor),
              ),
              Text(
                'fruit',
                style:
                    TextStyles.bold23.copyWith(color: AppColors.primaryColor),
              ),
            ],
          ),
        ),
        const PageViewItem(
          isVisible: false,
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
