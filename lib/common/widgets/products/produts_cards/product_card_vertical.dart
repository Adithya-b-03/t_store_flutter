import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/shadows.dart';
import 'package:t_store/common/widgets/image/t_rounded_image.dart';
import 'package:t_store/common/widgets/texts/product_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../icons/t_circular_icon.dart';
import '../../texts/product_price_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(children: [
          //thumbnail,wishlistbutton,discount tag
          TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //thumbail image
                  const TRoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                    height: 180,
                    padding: EdgeInsets.all(TSizes.sm),
                  ),
                  //sale tag
                  Positioned(
                      top: 12,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TRoundedContainer(
                          radius: TSizes.sm,
                          backgroundColor: TColors.secondary.withOpacity(0.8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: TSizes.sm, vertical: TSizes.xs),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: TSizes.sm, vertical: TSizes.xs),
                            child: Text(
                              '25%',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .apply(color: TColors.black),
                            ),
                          ),
                        ),
                      )),
                  //favourite icon button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: TCircularIcon(
                              icon: Iconsax.heart5, color: Colors.red)))
                ],
              )),
          //details
          const SizedBox(height: TSizes.spaceBtwItems / 2),
          Padding(
            padding: const EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TProductTitleText(
                  title: 'Green Nike Air Shoes',
                  smallSize: true,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems / 2,
                ),
                Row(
                  children: [
                    Text('Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium),
                    const SizedBox(height: TSizes.xs),
                    const Icon(Iconsax.verify5,
                        color: TColors.primary, size: TSizes.iconXs)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //price
                    TProductPriceText(price: '35',),
                    Container(
                      decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                (TSizes.cardRadiusMd),
                              ),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius))),
                          child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(child: Icon(Iconsax.add, color: TColors.white))),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

