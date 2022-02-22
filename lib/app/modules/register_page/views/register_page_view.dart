import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:insurance/app/modules/login_page/views/login_page_view.dart';
import 'package:insurance/app/utils/config.dart';
import 'package:insurance/widgets/input_field.dart';
import 'package:insurance/widgets/reusable_button.dart';

import '../controllers/register_page_controller.dart';

class RegisterPageView extends GetView<RegisterPageController> {
  final RegisterPageController _registerPageController =
      Get.put(RegisterPageController());
  @override
  Widget build(BuildContext context) {
    double _height = DeviceHeight(context: context).height;
    double _width = DeviceHeight(context: context).width;
    return Scaffold(
      body: GetBuilder<RegisterPageController>(builder: (builder) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            child: Container(
              
              padding: EdgeInsets.symmetric(
                horizontal: _width * 0.1,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: THEME_COLOR),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "REGISTER",
                          style: TextStyle(
                              fontSize: TextSize().m,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  LARGE_GAP,
                  Form(
                    key: _registerPageController.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Full Name"),
                        MEDIUM_GAP,
                        InputField(
                          textEditingController:
                              _registerPageController.fullNameController,
                          obscureText: false.obs,
                          showSuffixIcon: false,
                        ),
                        LARGE_GAP,
                        Text("Password"),
                        MEDIUM_GAP,
                        InputField(
                          textEditingController:
                              _registerPageController.passwordController,
                          obscureText: true.obs,
                          showSuffixIcon: true,
                        ),
                        LARGE_GAP,
                        Text("Confirm Password"),
                        MEDIUM_GAP,
                        InputField(
                          textEditingController:
                              _registerPageController.confirmPasswordController,
                          obscureText: true.obs,
                          showSuffixIcon: true,
                        ),
                        LARGE_GAP,
                        Text("Email"),
                        MEDIUM_GAP,
                        InputField(
                          textEditingController:
                              _registerPageController.emailController,
                          obscureText: false.obs,
                          showSuffixIcon: false,
                        ),
                        LARGE_GAP,
                        Text("Phone Number"),
                        MEDIUM_GAP,
                        InputField(
                          textEditingController:
                              _registerPageController.phoneNumberController,
                          obscureText: false.obs,
                          showSuffixIcon: false,
                        ),
                        LARGE_GAP,
                        LARGE_GAP,
                        ReusableButton(
                            borderRadius: 30,
                            color: THEME_COLOR,
                            paddingTop: 20,
                            paddingBottom: 20,
                            child: Text(
                              "REGISTER",
                              style: TextStyle(
                                  color: Colors.white, fontSize: TextSize().m),
                            ),
                            onTap: () {
                              if (_registerPageController.formKey.currentState!
                                  .validate()) {
                                Get.to(() => LoginPageView());
                              } else
                                return;
                            }),
                      ],
                    ),
                  ),
                  EXTRA_LARGE_GAP,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already an user?",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      GestureDetector(
                          onTap: () => Get.off(() => LoginPageView()),
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 16, color: THEME_COLOR),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
