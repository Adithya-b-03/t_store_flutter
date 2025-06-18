import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import '../../../../utils/constants/colors.dart';
class THomeScreen extends StatelessWidget {
  const THomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:TCurvedEdgeWidget(child: Column(
          children: [
            Container(
              color:TColors.primary,
              padding: const EdgeInsets.all(0),
              child: const SizedBox(
                height: 400,
                child: Stack(
                    children: [
                      Positioned(top:-150 ,right:-250,child: TCircularContainer(child: null,)),
                      Positioned(top:100,right:-300,child: TCircularContainer(child: null,))
                    ]
                ),
              ),
            )
          ],
        ),)
      )
    );
  }
}



