import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hup/features/home/presentation/views/widget/custom_buttom_navigation_bar.dart';
import 'package:fruit_hup/features/home/presentation/views/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'home_view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomButtomNavigationBar(),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
