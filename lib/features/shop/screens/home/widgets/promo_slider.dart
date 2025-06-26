import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:t_store/features/shop/controllers/home_controller.dart';
import 'package:t_store/utils/constants/colors.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/image/t_rounded_image.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
class TPromoSlider extends StatelessWidget {
  TPromoSlider({
    super.key, required this.banners,
  });
  final controller = Get.put(THomeController());
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(items: banners.map((url)=>TRoundedImage(imageUrl: url)).toList(), options: CarouselOptions(viewportFraction: 1,onPageChanged: (index,_)=>controller.updatePageIndicator(index))),
      const SizedBox(
        height: TSizes.spaceBtwItems,
      ),
      Center(
        child: Obx(
            ()=>  Row(
              mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                TCircularContainer(width: 20, height: 4,margin: const EdgeInsets.only(right: 10), color: controller.carousalCurrentIndex.value == i ? TColors.primary : TColors.grey)
            ],
          ),
        ),
      )
    ]);
  }
}
