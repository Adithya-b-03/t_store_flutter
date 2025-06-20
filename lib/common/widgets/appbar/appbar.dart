import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/app.dart';
import 'package:t_store/utils/device/device_utility.dart';

import '../../../utils/constants/sizes.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.title,
      required this.showBackArrow,
      this.leadingIcon,
      this.actions,
      required this.leadingOnPressed});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallbackAction? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: TSizes.md),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: showBackArrow ? IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left))
              : IconButton(onPressed: () => leadingOnPressed, icon: Icon(leadingIcon)),
          title: title,
          actions: actions,
        )
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
