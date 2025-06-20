import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import '../../../../utils/constants/colors.dart';
class THomeScreen extends StatelessWidget {
  const THomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child:TPrimaryHeaderContainer(child:Column(
          children: [
              // TAppBar()
          ],
        )
        )
      )
    );
  }
}




