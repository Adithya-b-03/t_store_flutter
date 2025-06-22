import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../utils/constants/colors.dart';

class THomeScreen extends StatelessWidget {
  const THomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
            child: TPrimaryHeaderContainer(
                child: Column(
      children: [
        THomeAppBar(),
        TSearchContainer(text: 'Search in Store'),
      ],
    ))));
  }
}

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key, required this.text, this.icon, this.showBackgroundColor = true, this.showBorder=true,
  });
  final String text;
  final IconData? icon;
  final bool showBackgroundColor,showBorder;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        padding: const EdgeInsets.all(TSizes.md),
        width: TDeviceUtils.getScreenWidth(context),
        decoration: BoxDecoration(
          color: showBackgroundColor ? dark ? TColors.dark : TColors.light : Colors.transparent,
          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          border: showBorder? Border.all(color: TColors.grey):null
        ),
        child: Row(
          children: [
            Icon(icon,color: TColors.darkGrey,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text(text,style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
      ),
    );
  }
}

