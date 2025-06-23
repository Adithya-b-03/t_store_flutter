import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';
class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key, required this.text, this.icon = Iconsax.search_normal, this.showBackgroundColor = true, this.showBorder=true,
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

