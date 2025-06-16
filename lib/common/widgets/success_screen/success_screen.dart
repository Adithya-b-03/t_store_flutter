import 'package:flutter/material.dart';
import 'package:t_store/common/styles/spacing_styles.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';
class TSuccessScreen extends StatelessWidget {
  const TSuccessScreen({super.key,required this.image,required this.onPressed,
  required this.subtitle, required this.title});
  final String title,subtitle,image;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight*2,
            child: Column(
              children: [
                //image
                Image(
                  image: AssetImage(image),
                  width: THelperFunctions.screenWidth()*0.6,
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
                //title and subtitle
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: TSizes.spaceBtwSections,),
                //buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: onPressed, child: const Text(TTexts.tContinue)),
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
              ],
            ),
        ),
      ),
    );
  }
}
