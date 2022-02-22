import 'package:get/get.dart';

import 'package:insurance/app/modules/home_page/bindings/home_page_binding.dart';
import 'package:insurance/app/modules/home_page/views/home_page_view.dart';
import 'package:insurance/app/modules/login_page/bindings/login_page_binding.dart';
import 'package:insurance/app/modules/login_page/views/login_page_view.dart';
import 'package:insurance/app/modules/premimum_calculator_detail/bindings/premimum_calculator_detail_binding.dart';
import 'package:insurance/app/modules/premimum_calculator_detail/views/premimum_calculator_detail_view.dart';
import 'package:insurance/app/modules/premimum_calculator_page/bindings/premimum_calculator_page_binding.dart';
import 'package:insurance/app/modules/premimum_calculator_page/views/premimum_calculator_page_view.dart';
import 'package:insurance/app/modules/register_page/bindings/register_page_binding.dart';
import 'package:insurance/app/modules/register_page/views/register_page_view.dart';
import 'package:insurance/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:insurance/app/modules/splash_screen/views/splash_screen_view.dart';
import 'package:insurance/app/modules/tour_screen/bindings/tour_screen_binding.dart';
import 'package:insurance/app/modules/tour_screen/views/tour_screen_view.dart';

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
      page: () => HomeView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_PAGE,
      page: () => RegisterPageView(),
      binding: RegisterPageBinding(),
    ),
    GetPage(
      name: _Paths.TOUR_SCREEN,
      page: () => TourScreenView(),
      binding: TourScreenBinding(),
    ),
    GetPage(
      name: _Paths.PREMIMUM_CALCULATOR_PAGE,
      page: () => PremimumCalculatorPageView(),
      binding: PremimumCalculatorPageBinding(),
    ),
    GetPage(
      name: _Paths.PREMIMUM_CALCULATOR_DETAIL,
      page: () => PremimumCalculatorDetailView(),
      binding: PremimumCalculatorDetailBinding(),
    ),
  ];
}
