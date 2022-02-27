import 'package:flutter/material.dart';
import 'package:insurance/app/utils/color_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class AppBarCallIcon extends StatelessWidget {
  const AppBarCallIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async{
        if(!await launch("tel://+97-1-4444717")) throw 'Could not launch';
      },
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        height: 33,
        width: 33,
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: const Icon(
          Icons.call,
          color: appThemeColor,
          size: 20,
        ),
      ),
    );
  }
}
