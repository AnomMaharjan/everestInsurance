import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:insurance/app/modules/register_page/views/register_page_view.dart';
import 'package:insurance/app/utils/config.dart';
import 'package:insurance/widgets/input_field.dart';
import 'package:insurance/widgets/reusable_button.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  final LoginPageController _loginPageController =
      Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    double _height = DeviceHeight(context: context).height;
    double _width = DeviceHeight(context: context).width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Container(
            // height: double.infinity,
            // width: double.infinity,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff0089CF),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(17),
                          bottomRight: Radius.circular(17))),
                  height: _height / 3,
                  margin: EdgeInsets.symmetric(horizontal: _width * 0.05),
                ),
                Form(
                  key: _loginPageController.formKey,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: _width * 0.1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: _height / 10,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: TextSize().xxl,
                                      color: Colors.white),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "to your account.",
                                  style: TextStyle(
                                      fontSize: TextSize().xs,
                                      color: Colors.white),
                                ),
                              ),
                              EXTRA_LARGE_GAP,
                              Image(
                                image: AssetImage(
                                  "assets/images/login_logo.png",
                                ),
                                fit: BoxFit.cover,
                                height: 200,
                                width: 200,
                              )
                            ],
                          ),
                        ),
                        // LARGE_GAP,
                        const Text(
                          "Username",
                          style: TextStyle(color: Color(0xff0089CF)),
                        ),
                        SMALL_GAP,
                        InputField(
                          textEditingController:
                              _loginPageController.usernameController,
                          obscureText: false,
                        ),
                        LARGE_GAP,
                        Text("Password",
                            style: TextStyle(color: Color(0xff0089CF))),
                        SMALL_GAP,
                        InputField(
                          textEditingController:
                              _loginPageController.passwordController,
                          obscureText: true,
                        ),
                        EXTRA_LARGE_GAP,
                        Center(
                          child: ReusableButton(
                              color: Color(0xff0089CF),
                              borderRadius: 20,
                              width: _width * 0.8,
                              height: 40,
                              child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              onTap: () {
                                _loginPageController.onSubmit();
                              }),
                        ),
                        EXTRA_LARGE_GAP,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Not registered yet?",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            GestureDetector(
                                onTap: () => Get.off(() => RegisterPageView()),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue.shade400),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
