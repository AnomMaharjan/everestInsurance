import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insurance/app/modules/login_page/views/login_page_view.dart';
import 'package:insurance/app/routes/app_pages.dart';
import 'package:insurance/app/utils/color_helper.dart';
import 'package:insurance/app/utils/config.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../controllers/tour_screen_controller.dart';

class TourScreenView extends GetView<TourScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: IntroductionScreen(
        scrollPhysics: ClampingScrollPhysics(),
        showSkipButton: false,
        showDoneButton: true,
        showNextButton: true,
        dotsFlex: 0,
        done: Padding(
          padding: const EdgeInsets.only(left: 140),
          child: Icon(
            Icons.arrow_forward,
            color: appThemeColor,
          ),
        ),
        onDone: () => Get.toNamed(Routes.LOGIN_PAGE),
        next: Padding(
          padding: const EdgeInsets.only(left: 120),
          child: Text(
            "NEXT",
            style: TextStyle(color: appThemeColor),
          ),
        ),
        nextFlex: 10,
        rawPages: [tourScreen(context: context), tourScreen(context: context)],
        dotsDecorator: DotsDecorator(
          activeColor: appThemeColor,
          size: Size(10.0, 10.0),
          color: appThemeColor,
          activeSize: Size(50.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    ));
  }
}

Widget tourScreen({BuildContext? context}) {
  return Center(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
      height: Get.height * 0.8,
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/tour_screen.png",
            height: 300,
            width: 300,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            height: 45,
          ),
          Text(
            "EVEREST INSURANCE",
            style: TextStyle(fontSize: 24, color: appThemeColor),
          ),
          LARGE_GAP,
          Text(
            "Any fraudulent information/ misrepresentation/ non-disclosure of material information of any sort in the proposal form may render the contract.",
            textAlign: TextAlign.left,
            style: TextStyle(color: appThemeColor, fontSize: 16, height: 1.5),
          )
        ],
      ),
    ),
  );
}
