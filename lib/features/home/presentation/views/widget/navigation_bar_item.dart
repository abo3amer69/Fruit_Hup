import 'package:flutter/material.dart';
import 'package:fruit_hup/features/home/domain/entites/buttom_navigation_bar_entity.dart';
import 'package:fruit_hup/features/home/presentation/views/widget/active_item.dart';

import 'inactive_item.dart';

class NavigationaBarItem extends StatelessWidget {
  const NavigationaBarItem(
      {super.key,
      required this.isSelected,
      required this.buttomNavigationBarEntity});

  final ButtomNavigationBarEntity buttomNavigationBarEntity;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            image: buttomNavigationBarEntity.ActiveImage,
            text: buttomNavigationBarEntity.name,
          )
        : InActiveItem(image: buttomNavigationBarEntity.inActiveImage);
  }
}
