import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insurance/app/modules/premimum_calculator_page/views/premimum_calculator_page_view.dart';

class HomePageController extends GetxController {
  late var pressed = false;
  late var click = false;
  List<Map> ourServicesCardContent = [
    {
      'text': 'Buy Policy',
      'icon': Icons.real_estate_agent_sharp,
      'onTap': () {},
    },
    {
      'text': 'Pay Premium',
      'icon': Icons.attach_money_sharp,
      'onTap': () {},
    },
    {
      'text': 'Claim Intimation',
      'icon': Icons.contact_page,
      'onTap': () {},
    },
    {
      'text': 'Cheque Claim',
      'icon': Icons.find_in_page,
      'onTap': () {},
    },
    {
      'text': 'Check Policy',
      'icon': Icons.find_in_page,
      'onTap': () {},
    },
    {
      'text': 'Premium Calculator',
      'icon': Icons.calculate,
      'onTap': () => Get.to(() => PremimumCalculatorPageView()),
    }
  ];

  final List images = [
    'assets/images/img1.jpg',
    'assets/images/img1.jpg',
    'assets/images/img1.jpg',
  ];

  colorUpdate() {
    pressed = !pressed;
    update();
  }

  clickUpdate() {
    click = !click;
    update();
  }
}
