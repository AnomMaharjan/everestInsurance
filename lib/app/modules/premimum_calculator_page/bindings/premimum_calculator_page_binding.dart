import 'package:get/get.dart';

import '../controllers/premimum_calculator_page_controller.dart';

class PremimumCalculatorPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PremimumCalculatorPageController>(
      () => PremimumCalculatorPageController(),
    );
  }
}
