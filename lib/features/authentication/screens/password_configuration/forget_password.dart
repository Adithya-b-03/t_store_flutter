import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:t_store/utils/constants/enums.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
class TForgetPassword extends StatelessWidget {
  const TForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //heading
              Text(TTexts.forgetPasswordTitleTTexts,style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium),
              const SizedBox(height: TSizes.spaceBtwSections*2),
              //textformfield
              TextFormField(
                decoration: const InputDecoration(labelText: TTexts.email,icon: Icon(Iconsax.direct_right),)
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              //submitbutton
              SizedBox(width:double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>const TResetPassword()), child: const Text(TTexts.submit),))
            ]
          )
      ),
    );
  }
}
