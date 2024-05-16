import "package:flutter/material.dart";
import "package:get/get.dart";

class SplashScreenController extends GetxController{
  static SplashScreenController get find=>Get.find();
  RxBool animate=false.obs;
  @override
  void initState(){
    startAnimation();
  }
  Future startAnimation() async{
    await Future.delayed(Duration(milliseconds:500));
    animate.value=true;
  }
}