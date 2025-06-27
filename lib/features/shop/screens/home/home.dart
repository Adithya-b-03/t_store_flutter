import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:t_store/common/widgets/products/produts_cards/product_card_vertical.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import '../../../../common/widgets/image/t_rounded_image.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';

class THomeScreen extends StatelessWidget {
  const THomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      TPrimaryHeaderContainer(
          child: Column(
        children: [
          //appbar
          const THomeAppBar(),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          //searchbar
          const TSearchContainer(text: 'Search in Store'),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          //categories
          const THomeCategories(),
        ],
      )),
      Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(children: [
          TPromoSlider(
            banners: [
              TImages.promoBanner1,
              TImages.promoBanner2,
              TImages.promoBanner3
            ],
          ),
          TProductCardVertical(

          )
        ]),
      ),
    ])));
  }
}
