import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup/core/utils/app_images.dart';
import 'package:fruit_hup/features/home/domain/entites/buttom_navigation_bar_entity.dart';
import 'package:fruit_hup/features/home/presentation/views/widget/navigation_bar_item.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  const CustomButtomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: buttomNavigationBarItem.map((e) {
          return NavigationaBarItem(
            buttomNavigationBarEntity: e,
            isSelected: false,
          );
        }).toList(),
      ),
    );
  }
}
