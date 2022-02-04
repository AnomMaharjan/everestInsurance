import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:insurance/app/modules/home_page/views/home_page_view.dart';

class LoginPageController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  onSubmit() {
    if (formKey.currentState!.validate()) {
      Get.offAll(() => HomePageView());
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
