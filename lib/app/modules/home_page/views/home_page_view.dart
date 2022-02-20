import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:insurance/app/modules/home_page/controllers/home_page_controller.dart';
import 'package:insurance/app/utils/color_helper.dart';
import 'package:insurance/app/utils/sizes_helper.dart';
import 'package:insurance/widgets/reusable_container.dart';

class HomePageView extends GetView<HomePageController> {
  final HomePageController _controller = Get.put(HomePageController());

  HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          actions: [
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(right: 12),
              height: 33,
              width: 33,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: const Icon(
                Icons.call,
                color: appThemeColor,
                size: 20,
              ),
            )
          ],
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: appThemeColor,
            statusBarIconBrightness: Brightness.light,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              firstContainer(context),
              secondContainer(context),
            ],
          ),
        ));
  }

  Widget firstContainer(BuildContext context) {
    return Column(
      children: [
        Container(
          width: displayWidth(context),
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.only(top: 3, left: 20.0, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: displayHeight(context) * 0.01,
                ),
                const Text(
                  "Hello, User",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const Text("Have a great day.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300)),
                SizedBox(
                  height: displayHeight(context) * 0.02,
                ),
              ],
            ),
          ),
        ),
        Stack(
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(width: 0, color: appThemeColor),
                color: appThemeColor,
              ),
            ),
            CarouselSlider.builder(
              itemCount: _controller.images.length,
              itemBuilder: (context, index, realIndex) {
                final urlImages = _controller.images[index];
                return buildImage(urlImages, index);
              },
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget secondContainer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            "Our Services",
            style: TextStyle(fontSize: 16, color: appThemeColor),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20,
          ),
          child: Wrap(
            runSpacing: 16,
            runAlignment: WrapAlignment.start,
            spacing: displayWidth(context) * 0.03,
            children: List.generate(
              _controller.itemDetails.length,
              (index) => SizedBox(
                width: 106,
                child: ReusableContainer(
                  icon: _controller.itemDetails[index].icon,
                  name: _controller.itemDetails[index].name,
                  onTap: _controller.itemDetails[index].onTap,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  buildImage(String urlImages, int index) {
    return Container(
      margin: const EdgeInsets.all(10),
      foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.white, width: 10)),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(2, 2)),
          ],
          image: DecorationImage(
            image: AssetImage(
              _controller.images[index].toString(),
            ),
            fit: BoxFit.cover,
          )),
    );
  }
}
