import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

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
                        children: const [
                          //search bar
                          SizedBox(height: TSizes.spaceBtwItems),
                          TSearchContainer(text: 'Search in store',showBorder: true,showBackgroundColor: false,padding: EdgeInsets.zero,),
                          SizedBox(height: TSizes.spaceBtwSections,)
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
