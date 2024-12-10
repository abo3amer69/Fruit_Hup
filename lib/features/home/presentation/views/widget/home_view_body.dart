import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hup/constants.dart';
import 'package:fruit_hup/core/widget/custom_search_text_field.dart';
import 'package:fruit_hup/features/home/presentation/views/widget/best_selling_header.dart';
import 'package:fruit_hup/features/home/presentation/views/widget/custom_home_abb_par.dart';
import 'package:fruit_hup/features/home/presentation/views/widget/featured_item.dart';
import 'package:fruit_hup/features/home/presentation/views/widget/featured_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: KTopPadding,
                ),
                CustomHomeAppBar(),
                SizedBox(
                  height: 16,
                ),
                SearchTextField(),
                SizedBox(
                  height: 12,
                ),
                FeaturedList(),
                SizedBox(
                  height: 12,
                ),
                BestSellingHeader(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
