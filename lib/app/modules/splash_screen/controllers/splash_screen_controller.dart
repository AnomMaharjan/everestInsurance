import 'package:get/get.dart';
import 'package:insurance/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  navigate() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAllNamed(Routes.LOGIN_PAGE);
    });
  }

  @override
  void onInit() {
    super.onInit();
    navigate();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
