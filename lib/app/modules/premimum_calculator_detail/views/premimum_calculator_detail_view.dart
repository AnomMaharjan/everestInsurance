import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:insurance/app/utils/color_helper.dart';
import 'package:insurance/app/utils/sizes_helper.dart';
import 'package:insurance/widgets/appBar_call_icon.dart';
import 'package:insurance/widgets/reuseable_box.dart';

import '../controllers/premimum_calculator_detail_controller.dart';

class PremimumCalculatorDetailView
    extends GetView<PremimumCalculatorDetailController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          title: Text(
            'Calculator Page',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          leadingWidth: 30,
          leading: IconButton(
            padding: EdgeInsets.only(left: 18),
            icon: const Icon(Icons.arrow_back_ios, size: 20),
            onPressed: () => Get.back(),
            color: Colors.white,
          ),
          bottom: TabBar(
            indicator: BoxDecoration(color: Colors.blue.shade700),
            tabs: [
              Tab(
                child: Text(
                  "Comprehensive",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  "Third Party",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: AppBarCallIcon(),
            )
          ],
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: appThemeColor,
              statusBarIconBrightness: Brightness.light),
        ),
        body: TabBarView(
          children: [
            secondContainer(context),
            secondContainer(context),
          ],
        ),
      ),
    );
  }

  Widget secondContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          const SizedBox(height: 20),
          inputText(),
          const SizedBox(height: 20),
          inputText(),
          const SizedBox(height: 20),
          inputText(),
          const SizedBox(height: 30),
          const Text(
            "Direct Business",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              ReusableBox(
                height: 30,
                width: 70,
                name: "Yes",
                // color: _controller.click ? Colors.blue : Colors.white,
                // onTap: () => _controller.clickUpdate(),
              ),
              const SizedBox(
                width: 20,
              ),
              ReusableBox(
                height: 30,
                width: 70,
                name: "No",
                // color: Colors.white,
                // onTap: () => _controller.clickUpdate(),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Direct Business",
              style:
                  TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Row(
            children: [
              ReusableBox(
                height: 30,
                width: 70,
                name: "Yes",
                // color: Colors.white,
                // onTap: () => _controller.colorUpdate(),
              ),
              const SizedBox(
                width: 20,
              ),
              ReusableBox(
                height: 30,
                width: 70,
                name: "No",
                // color: _controller.pressed ? Colors.blue : Colors.white,
                // onTap: () => _controller.colorUpdate(),
              ),
            ],
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: displayWidth(context),
            height: 50,
            child: ElevatedButton(
                onPressed: () => showDialogue(context),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
                child: const Text("Continue")),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Future showDialogue(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Please.",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "Please enter your valid policy number provided by the company",
                style: TextStyle(
                    color: Colors.blue.withOpacity(0.6), fontSize: 14),
              ),
            ],
          ),
          content: inputText(),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.35,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                      ),
                      child: const Text("Enter")),
                ),
                SizedBox(
                  width: width * 0.3,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(0),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      child: const Text(
                        "Cancel",
                        style: TextStyle(color: Colors.black),
                      )),
                )
              ],
            )
          ],
        );
      },
    );
  }
}

Widget inputText() {
  return Container(
    height: 55,
    child: TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          hintText: "Policy Number"),
    ),
  );
}
