import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/app_color.dart';
import 'package:fruit_hup/core/utils/app_images.dart';

import '../utils/app_text_style.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xffF3F5F7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
              ),
            ),
          ),
          Positioned.fill(
              child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                Assets.imagesWatermelonTest,
              ),
              const SizedBox(
                height: 24,
              ),
              ListTile(
                title: const Text(
                  'بطيخ',
                  textAlign: TextAlign.center,
                  style: TextStyles.semiBold16,
                ),
                subtitle: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '20جنية',
                        style: TextStyles.bold13.copyWith(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      TextSpan(
                        text: '/',
                        style: TextStyles.semiBold13.copyWith(
                          color: AppColors.lightSecondryColor,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyles.semiBold13.copyWith(
                          color: const Color(
                            0xffF4A91F,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: 'الكيلو',
                        style: TextStyles.semiBold13.copyWith(
                          color: AppColors.lightSecondryColor,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.right,
                ),
                trailing: const CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
