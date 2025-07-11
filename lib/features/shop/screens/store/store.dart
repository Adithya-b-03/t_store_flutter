import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/image/t_rounded_image.dart';
import 'package:t_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class TStore extends StatelessWidget {
  const TStore({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCartCounter(
              onPressed: () {}, iconColor: dark ? TColors.light : TColors.dark)
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                expandedHeight: 440,
                flexibleSpace:
                    Padding(
                        padding: const EdgeInsets.all(TSizes.defaultSpace),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          //search bar
                          const SizedBox(height: TSizes.spaceBtwItems),
                          const TSearchContainer(text: 'Search in store',showBorder: true,showBackgroundColor: false,padding: EdgeInsets.zero,),
                          const SizedBox(height: TSizes.spaceBtwSections,),
                          //featured brands
                          TSectionHeading(title: 'Featured Brands',onPressed: (){}),
                          const SizedBox(height: TSizes.spaceBtwItems/1.5),
                          TRoundedContainer(
                            padding: const EdgeInsets.all(TSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                //iron
                                Container(
                                  width: 56,
                                  height: 56,
                                  padding: const EdgeInsets.all(TSizes.sm),
                                  decoration: BoxDecoration(
                                    color: THelperFunctions.isDarkMode(context)?TColors.black:TColors.white,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Image(
                                    image: AssetImage(TImages.clothIcon),
                                    color: THelperFunctions.isDarkMode(context)?TColors.white:TColors.dark,
                                  )
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
              )
            ];
          },
          body: Container()),
    );
  }
}
