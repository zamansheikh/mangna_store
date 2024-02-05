import 'package:flutter/material.dart';
import 'package:mangna_store/utils/constants/image_strings.dart';
import 'package:mangna_store/utils/constants/sizes.dart';
import 'package:mangna_store/utils/constants/text_strings.dart';
import 'package:mangna_store/utils/device/device_utility.dart';
import 'package:mangna_store/utils/helpers/helper_functions.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Pages

          PageView(
            children: const [
              OnBoardingScreen(
                image: MImages.onBoardingImage1,
                title: MTexts.onBoardingTitle1,
                subTitle: MTexts.onBoardingSubTitle1,
              ),
              OnBoardingScreen(
                image: MImages.onBoardingImage2,
                title: MTexts.onBoardingTitle2,
                subTitle: MTexts.onBoardingSubTitle2,
              ),
              OnBoardingScreen(
                image: MImages.onBoardingImage3,
                title: MTexts.onBoardingTitle3,
                subTitle: MTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip Button
          Positioned(
            top: MDeviceUtils.getAppBarHeight(),
            right: MSizes.defaultSpace,
            child: TextButton(child: const Text(MTexts.skip), onPressed: () {}),
          ),

          //Dot Navigation Smooth Page Indicator

          //Circuller button
        ],
      ),
    );
  }
}

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: MHelperFunctions.screenWidth() * .8,
            height: MHelperFunctions.screenHeight() * .6,
            image: AssetImage(
              image,
            ),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: MSizes.spaceBtwItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
