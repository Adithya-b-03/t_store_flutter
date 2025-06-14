import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';

class OnBoardingController extends GetxController{
    static OnBoardingController get instance => Get.find();
    final pageController = PageController();
    Rx<int> currentPageIndex = 0.obs;
    void updatePageIndicator(index) => currentPageIndex.value = index;

    void dotNavigationClick(index){
        currentPageIndex.value = index;
        pageController.jumpToPage(index);
    }
    void nextPage(){
    if(currentPageIndex.value == 2){
        Get.offAll(LoginScreen());
    }
    else{
        currentPageIndex.value = currentPageIndex.value+1;
        pageController.jumpToPage(currentPageIndex.value);
    }
    }
    void skipPage(){
        currentPageIndex.value = 2;
        pageController.jumpToPage(2);
    }
}