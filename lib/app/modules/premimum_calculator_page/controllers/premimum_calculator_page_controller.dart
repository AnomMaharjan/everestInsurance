import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insurance/app/modules/premimum_calculator_detail/views/premimum_calculator_detail_view.dart';

class PremimumCalculatorPageController extends GetxController {
  List<Map> ourServicesCardContent = [
    {
      'text': 'Buy Policy',
      'icon': Icons.real_estate_agent_sharp,
      'onTap': () => Get.to(() => PremimumCalculatorDetailView()),
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
      'onTap': () {},
    },
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
      'onTap': () {},
    },
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
      'onTap': () {},
    }
  ];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
