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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.top,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: THEME_COLOR,
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
                              SizedBox(
                                height: 32,
                              ),
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
                          style: TextStyle(color: THEME_COLOR),
                        ),
                        SMALL_GAP,
                        InputField(
                          textEditingController:
                              _loginPageController.usernameController,
                          obscureText: false.obs,
                          showSuffixIcon: false,
                        ),
                        LARGE_GAP,
                        Text("Password",
                            style: TextStyle(color: THEME_COLOR)),
                        SMALL_GAP,
                        InputField(
                          textEditingController:
                              _loginPageController.passwordController,
                          obscureText: true.obs,
                          showSuffixIcon: false,
                        ),
                        EXTRA_LARGE_GAP,
                        Center(
                          child: ReusableButton(
                              color: THEME_COLOR,
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
                                onTap: () =>
                                    Get.off(() => RegisterPageView()),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 16, color: THEME_COLOR),
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
