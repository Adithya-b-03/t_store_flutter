import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.padding = 0,
    this.radius = 400,
    this.color = TColors.textWhite, required this.child,
  });
  final double? height;
  final double? width;
  final double radius;
  final double padding;
  final Color color;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color.withAlpha(51),
      ),
      child: child,
    );
  }
}
