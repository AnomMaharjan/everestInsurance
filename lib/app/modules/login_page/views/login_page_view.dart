import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:insurance/widgets/input_field.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  final LoginPageController _loginPageController =
      Get.put(LoginPageController());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: const Text(
                    'LOGIN TO YOUR ACCOUNT',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Username",
                  style: TextStyle(color: Color(0xff0089CF)),
                ),
                const SizedBox(
                  height: 6,
                ),
                InputField(
                  textEditingController:
                      _loginPageController.usernameController,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text("Password", style: TextStyle(color: Color(0xff0089CF))),
                const SizedBox(
                  height: 6,
                ),
                InputField(
                  textEditingController:
                      _loginPageController.passwordController,
                  obscureText: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
