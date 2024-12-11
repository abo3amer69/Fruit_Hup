import 'package:flutter/material.dart';
import 'package:fruit_hup/core/widget/notifaction_widget.dart';

import '../utils/app_text_style.dart';

AppBar BuildAppBar() {
  return AppBar(
    actions: const [
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: NotifactionWidget(),
      ),
    ],
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: const Text(
      'الاكثر مبيعا',
      textAlign: TextAlign.center,
      style: TextStyles.bold19,
    ),
  );
}
