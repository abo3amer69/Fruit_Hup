import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_images.dart';

class NotifactionWidget extends StatelessWidget {
  const NotifactionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const ShapeDecoration(
        shape: OvalBorder(),
        color: Color(0xffEEF8ED),
      ),
      child: SvgPicture.asset(
        Assets.imagesNotification,
      ),
    );
  }
}
