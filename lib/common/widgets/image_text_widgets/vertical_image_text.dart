import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key, required this.image, required this.title, this.textColor=TColors.white, this.backgroundColor=TColors.white, this.onTap,
  });
  final String image,title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
                width: 56,
                height: 56,
                padding: const EdgeInsets.all(TSizes.sm),
                decoration: BoxDecoration(
                  color: backgroundColor != null ? THelperFunctions.isDarkMode(context)?TColors.black:TColors.white : null,
                  borderRadius: BorderRadius.circular(100),
                ),
                child:  Center(
                    child: Image(image: AssetImage(image),fit:BoxFit.cover,color:TColors.dark)
                )
            ),
            //text
            const SizedBox(height: TSizes.spaceBtwItems/2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
