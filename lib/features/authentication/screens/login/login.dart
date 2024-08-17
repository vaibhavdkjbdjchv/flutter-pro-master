import 'package:demo/common/styles/spacing_styles.dart';
import 'package:demo/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:demo/features/authentication/screens/login/widgets/login_form.dart';
import 'package:demo/features/authentication/screens/login/widgets/login_header.dart';
import 'package:demo/utils/constants/sizes.dart';
import 'package:demo/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// logo title & sun-title
              const TLoginHeader(),

              /// form
              const TLoginForm(),

              ///   divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(child: Divider(color: dark ? TColors.darkGrey : TColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
                  Text(TTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium),
                  Flexible(child: Divider(color: dark ? TColors.darkGrey : TColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
                ],
              ),
              const SizedBox(width: TSizes.spaceBtwSections),

              //   footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Container(
                   decoration: BoxDecoration(border: Border.all(color: TColors.grey), borderRadius: BorderRadius.circular(100)),
                   child: IconButton(
                     onPressed: () {},
                     icon: const Image(
                       width: TSizes.iconMd,
                       height: TSizes.iconMd,
                       image: AssetImage(TImages.google),
                     ),

                   ),
                 ),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: TColors.grey), borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: TSizes.iconMd,
                        height: TSizes.iconMd,
                        image: AssetImage(TImages.facebook),
                      ),

                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
