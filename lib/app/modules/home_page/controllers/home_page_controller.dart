import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Model {
  IconData icon;
  String name;
  VoidCallback onTap;

  Model(this.name, this.icon, this.onTap);
}


class HomePageController extends GetxController {


 late var pressed = false;
  late var click = false;
  final List itemDetails = [
    Model("Buy Policy", Icons.person, () {
      
    }),
    Model("Premium Calculator", Icons.person, () {
      Container(
        color: Colors.red,
      );
      // Get.to(PremiumCalculatorView());
    }),
    Model("Pay Premium", Icons.person, () {
      Container(
        color: Colors.red,
      );
    }),
    Model("Claim Intimation", Icons.person, () {
      Container(
        color: Colors.red,
      );
    }),
    Model("Cheque Claim", Icons.person, () {
      Container(
        color: Colors.red,
      );
    }),
    Model("Check Policy", Icons.person, () {
      Container(
        color: Colors.red,
      );
    }),
  ];

  final List calculatorDetails = [
    Model("Premium Calculator", Icons.person, () {
      Container(
        color: Colors.red,
      );
      
    }),
    Model("Pay Premium", Icons.person, () {
      Container(
        color: Colors.red,
      );
    }),
    Model("Claim Intimation", Icons.person, () {
      Container(
        color: Colors.red,
      );
    }),
    Model("Cheque Claim", Icons.person, () {
      Container(
        color: Colors.red,
      );
    }),
    Model("Check Policy", Icons.person, () {
      Container(
        color: Colors.red,
      );
    }),
    Model("Check Policy", Icons.person, () {
      Container(
        color: Colors.red,
      );
    }),
    Model("Check Policy", Icons.person, () {
      Container(
        color: Colors.red,
      );
    }),
    Model("Check Policy", Icons.person, () {
      Container(
        color: Colors.red,
      );
    }),
    Model("Premium Calculator", Icons.person, () {
      Container(
        color: Colors.red,
      );
      
    }),
    Model("Premium Calculator", Icons.person, () {
      Container(
        color: Colors.red,
      );
      
    }),
    Model("Pay Premium", Icons.person, () {
      Container(
        color: Colors.red,
      );
    }),
    Model("Claim Intimation", Icons.person, () {
      Container(
        color: Colors.red,
      );
    }),
    Model("Premium Calculator", Icons.person, () {
      Container(
        color: Colors.red,
      );
      
    }),
    Model("Pay Premium", Icons.person, () {
      Container(
        color: Colors.red,
      );
    }),
    Model("Claim Intimation", Icons.person, () {
      Container(
        color: Colors.red,
      );
    }),
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
