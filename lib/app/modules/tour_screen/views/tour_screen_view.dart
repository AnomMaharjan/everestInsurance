import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tour_screen_controller.dart';

class TourScreenView extends GetView<TourScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Text(
          'TourScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
