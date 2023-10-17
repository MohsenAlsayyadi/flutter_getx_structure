import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(
                builder: (controller) => Text('${controller.counter}'), id: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: controller.decrement, child: const Text("-")),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: controller.increment, child: const Text("+")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
