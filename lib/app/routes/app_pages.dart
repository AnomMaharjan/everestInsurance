import 'package:get/get.dart';

import 'package:insurance/app/modules/home_page/bindings/home_page_binding.dart';
import 'package:insurance/app/modules/home_page/views/home_page_view.dart';
import 'package:insurance/app/modules/login_page/bindings/login_page_binding.dart';
import 'package:insurance/app/modules/login_page/views/login_page_view.dart';
import 'package:insurance/app/modules/register_page/bindings/register_page_binding.dart';
import 'package:insurance/app/modules/register_page/views/register_page_view.dart';
import 'package:insurance/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:insurance/app/modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_PAGE,
      page: () => RegisterPageView(),
      binding: RegisterPageBinding(),
    ),
  ];
}
