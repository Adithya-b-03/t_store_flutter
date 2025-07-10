import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/store/store.dart';

import 'features/shop/screens/home/home.dart';
class TNavigationMenu extends StatelessWidget {
  const TNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=>
          NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=>controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(
          ()=>
            controller.screens[controller.selectedIndex.value]
      ),
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens = [const THomeScreen(),const TStore(),Container(color: Colors.blue),Container(color: Colors.orange)];
}