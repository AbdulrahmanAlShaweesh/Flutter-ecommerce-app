import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/catigories.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_speical_offerce.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/home_Screen_sliders.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/popular_iterms.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/special_offers_widget.dart';

class CusstomHomeScreenBody extends StatelessWidget {
  const CusstomHomeScreenBody({super.key});
  // int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 10,
        ),
        CustomHomeScreenSlider(),
        const SizedBox(
          height: 20,
        ),
        CustomCatigoriesWidget(),
        CustomSpicalOffers(
          text: 'Special for you',
          seeAll: 'See More',
        ),
        const SpeicalOffers(),
        CustomSpicalOffers(
          text: 'Most Popular',
          seeAll: 'See More',
        ),
        const CustomPopularItemsWidget(),
      ],
    );
  }
}
