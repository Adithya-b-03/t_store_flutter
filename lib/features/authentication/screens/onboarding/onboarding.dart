import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';

import '../../../../utils/device/device_utility.dart';
class  OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            PageView(
              children: const [
                OnBoardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1
                ),
                OnBoardingPage(
                    image: TImages.onBoardingImage2,
                    title: TTexts.onBoardingTitle2,
                    subTitle: TTexts.onBoardingSubTitle2
                ),
                OnBoardingPage(
                    image: TImages.onBoardingImage3,
                    title: TTexts.onBoardingTitle3,
                    subTitle: TTexts.onBoardingSubTitle3
                ),

              ],
            ),
            const OnBoardingSkip(),
            // SmoothPageIndicator(controller:PageController(),count:3),
          ],
        )
    );
  }
}





