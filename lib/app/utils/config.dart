import 'package:flutter/material.dart';

const Widget SMALL_GAP = SizedBox(height: 6);
const Widget MEDIUM_GAP = SizedBox(
  height: 10,
);
const Widget LARGE_GAP = SizedBox(
  height: 16,
);

const Widget EXTRA_LARGE_GAP = SizedBox(height: 24);

class TextSize {
  double get xxl => 36;
  double get xl => 30;
  double get l => 24;
  double get m => 16;
  double get s => 14;
  double get xs => 12;
  double get xxs => 10;
}

class DeviceHeight {
  BuildContext? context;
  DeviceHeight({this.context});
  double get height => MediaQuery.of(context!).size.height;
  double get width => MediaQuery.of(context!).size.width;
}
