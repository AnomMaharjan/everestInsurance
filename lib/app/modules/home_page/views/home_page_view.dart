import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:insurance/app/modules/home_page/controllers/home_page_controller.dart';
import 'package:insurance/widgets/reusable_container.dart';

class HomePageView extends GetView<HomePageController> {
  final HomePageController _controller = Get.put(HomePageController());

  HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(0.0),
            child: AppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.blue,
                //statusBarIconBrightness: Brightness.dark,
              ),
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  firstContainer(context),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Our Service",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  secondContainer(context),
                ],
              ),
            ),
          )),
    );
  }

  Widget firstContainer(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.42,
      width: width,
      //color: Colors.green,
      child: Stack(
        children: [
          Container(
            height: height * 0.3,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(top: 3, left: 20.0, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 30,
                      ),
                      const Spacer(),
                      Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.call,
                            color: Colors.blue,
                            size: 30,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Hello, User",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const Text("Have a great day",
                      style: TextStyle(color: Colors.white, fontSize: 20))
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            height: height * 0.24,
            width: width,
            //left: width * 0.1,
            child: Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 0, bottom: 10),
              child: CarouselSlider.builder(
                  itemCount: _controller.images.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImages = _controller.images[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          Container(
                            height: height,
                            width: width * 0.75,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      offset: const Offset(2, 2)),
                                ],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: buildImage(urlImages, index)),
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 2),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget secondContainer(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20,
      ),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 130,
            mainAxisSpacing: 15,
            childAspectRatio: 3,
            crossAxisSpacing: 10,
            crossAxisCount: 3),
        itemCount: _controller.itemDetails.length,
        itemBuilder: (context, index) {
          return ReusableContainer(
            icon: _controller.itemDetails[index].icon,
            name: _controller.itemDetails[index].name,
            onTap: _controller.itemDetails[index].onTap,
            //height: 50,
            //width: 10,
          );
        },
      ),
    );
  }

  buildImage(String urlImages, int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image(
        image: AssetImage(
          _controller.images[index],
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}
