import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final Widget? child;
  final double? width,
      height,
      borderRadius,
      paddingTop,
      paddingBottom,
      paddingLeft,
      paddingRight;
  final Color? color;
  final VoidCallback? onTap;

  const ReusableButton(
      {Key? key,
      required this.child,
      this.width,
      this.height,
      this.color,
      this.paddingTop: 8,
      this.paddingBottom: 8,
      this.paddingLeft: 8,
      this.paddingRight: 8,
      this.borderRadius: 0,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        padding: EdgeInsets.only(
          top: this.paddingTop!,
          bottom: this.paddingBottom!,
          left: this.paddingLeft!,
          right: this.paddingRight!,
        ),
        width: this.width,
        height: this.height,
        child: Center(child: child),
        decoration: BoxDecoration(
            color: this.color,
            borderRadius: BorderRadius.circular(this.borderRadius!)),
      ),
    );
  }
}
