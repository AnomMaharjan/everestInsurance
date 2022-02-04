import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:insurance/app/utils/color_helper.dart';
import 'package:insurance/app/utils/sizes_helper.dart';
import 'package:insurance/widgets/appBar_call_icon.dart';
import 'package:insurance/widgets/reusable_container.dart';

import '../controllers/premimum_calculator_page_controller.dart';

class PremimumCalculatorPageView
    extends GetView<PremimumCalculatorPageController> {
  final PremimumCalculatorPageController _premimumCalculatorPageController =
      Get.put(PremimumCalculatorPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          title: Text(
            'Premimum Calculator',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          leadingWidth: 30,
          leading: IconButton(
            padding: EdgeInsets.only(left: 18),
            icon: const Icon(Icons.arrow_back_ios, size: 20),
            onPressed: () => Get.back(),
            color: Colors.white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: AppBarCallIcon(),
            )
          ],
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: appThemeColor,
              statusBarIconBrightness: Brightness.light),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Center(child: premimumContainerCard(context)),
            ],
          ),
        ));
  }

  Widget premimumContainerCard(BuildContext context) {
    return Wrap(
      runSpacing: 16,
      spacing: displayWidth(context) * 0.03,
      children: List.generate(
        _premimumCalculatorPageController.ourServicesCardContent.length,
        (index) => SizedBox(
          width: 106,
          child: ReusableContainer(
            icon: _premimumCalculatorPageController
                .ourServicesCardContent[index]['icon'],
            name: _premimumCalculatorPageController
                .ourServicesCardContent[index]['text'],
            onTap: _premimumCalculatorPageController
                .ourServicesCardContent[index]['onTap'],
          ),
        ),
      ),
    );
  }
}
