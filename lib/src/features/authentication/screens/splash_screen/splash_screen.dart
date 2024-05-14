import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/imagestrings.dart';
import 'package:resq/src/constants/size.dart';
import 'package:resq/src/constants/text_strings.dart';
import 'package:resq/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:resq/src/features/authentication/screens/get_started/get_started.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController=Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      backgroundColor: tGreyColor,
      body: Stack(
        children: [
        Obx( ()=>
          AnimatedPositioned(
                duration: Duration(milliseconds: 600),
                top:80,
                left:splashController.animate.value ? 40 : -60,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LogoAndTitle(),
                  DescriptionText(),
                ],
              ),
            ),
        ), Obx(()=> AnimatedPositioned(
                    bottom:splashController.animate.value? 100:-300,
                    left:40,
                    child: Column(
                      children:[
                    GestureDetector(
                      onTap:(){
                        Get.to(()=>getStarted());
                      },
                      child: TouchImage(),
                    ),
                    TouchText(),
                  ]
                ), duration: Duration(milliseconds:600)),
              )
          ],
        ),
    );
  }

}

class LogoAndTitle extends StatelessWidget {
  const LogoAndTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.fromLTRB(0, 0, 0, 50.0),
      child: Row(
        children: [
          Container(
            child: Image.asset(
              tCrossLogo,
              height: tLogoSize,
              width: tLogoSize,
            ),
            margin:EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
          ),
          const Text(
            tAppName,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: tAppNameSize,
              color: tSecondaryColor1,
            ),
          ),
        ],
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.fromLTRB(0,0,0,50.0),
      width:300.0,
      child: const Text(
        tWelcomeMessage,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: tSecondaryColor2,
          fontSize: tHeadingSize,
          fontWeight: FontWeight.w600,
          height:1.0,
        ),
      ),
    );
  }
}

class TouchImage extends StatelessWidget {
  const TouchImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.fromLTRB(0,0,0,10.0),
      child: Image.asset(
        tTouchImage,
        height: tTouchImageSize,
        width: tTouchImageSize,
      ),
    );
  }
}

class TouchText extends StatelessWidget {
  const TouchText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      tInstruction,
      style: TextStyle(
        color: tSecondaryColor2,
        fontSize: tTextSize,
        fontWeight: FontWeight.w400,
        letterSpacing: 2.0,
      ),
    );
  }
}


