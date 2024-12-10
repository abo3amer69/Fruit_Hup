import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/app_images.dart';
import 'package:fruit_hup/core/utils/app_text_style.dart';
import 'package:fruit_hup/features/home/presentation/views/widget/featured_item_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Stack(
          children: [
            Image.asset(Assets.imagesWatermelonTest),
            Container(
              child: Column(
                children: [
                  Text(
                    'عروض العيد',
                    style: TextStyles.regular13.copyWith(color: Colors.white),
                  ),
                  Text(
                    'خصم 25%',
                    style: TextStyles.bold19.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  FeaturedItemButton(onPressed: () {}),
                ],
              ),
            )
          ],
        ));
  }
}
