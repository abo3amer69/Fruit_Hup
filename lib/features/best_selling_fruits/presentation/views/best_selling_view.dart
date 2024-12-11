import 'package:flutter/material.dart';
import 'package:fruit_hup/features/best_selling_fruits/presentation/views/widget/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const routeName = 'best-selling_view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BestSellingViewBody(),
    );
  }
}
