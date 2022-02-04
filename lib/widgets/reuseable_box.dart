import 'package:flutter/material.dart';

class ReusableBox extends StatelessWidget {
  ReusableBox(
      {Key? key, this.name, this.color, this.width, this.height, this.onTap})
      : super(key: key);
  final String? name;
  final Color? color;
  final double? height;
  final double? width;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30,
        width: 70,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.blue),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name!),
          ],
        ),
      ),
    );
  }
}
