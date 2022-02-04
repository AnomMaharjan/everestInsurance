import 'package:flutter/material.dart';

class ReusableContainer extends StatefulWidget {
  const ReusableContainer({
    Key? key,
    this.onTap,
    this.name,
    this.icon,
  }) : super(key: key);

  final IconData? icon;
  final String? name;
  final VoidCallback? onTap;

  @override
  _ReusableContainerState createState() => _ReusableContainerState();
}

class _ReusableContainerState extends State<ReusableContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.05),
                  spreadRadius: 2,
                  blurRadius: 4,
                  blurStyle: BlurStyle.solid,
                  offset: const Offset(2, 2)),
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              color: Colors.blue,
              size: 70,
            ),
            SizedBox(
              height: 40,
              child: Text(
                widget.name!,
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
