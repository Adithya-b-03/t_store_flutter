import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../utils/constants/colors.dart';
class THomeScreen extends StatelessWidget {
  const THomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children: [
            Container(
              color:TColors.primary,
              padding: const EdgeInsets.all(0),
              child: const Stack(
                children: [
                  TCircularContainer(child: null,)
                ]
              ),
            )
          ],
        )
      )
    );
  }
}

