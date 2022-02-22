import 'package:get/get.dart';

import '../controllers/premimum_calculator_detail_controller.dart';

class PremimumCalculatorDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PremimumCalculatorDetailController>(
      () => PremimumCalculatorDetailController(),
    );
  }
}
