import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:using_getx_controller/controller.dart';

class Ui extends StatelessWidget {
  Ui({super.key});

//DECLARING THE INIT GLOBALLY
  KamalController kamalController = Get.put(KamalController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetX(
              // init: KamalController(),
              builder: (controller) {
            //when init is in the Getx
            return Text("Current value is ${kamalController.count}");
          }),
          ElevatedButton(
              onPressed: () {
                //WHEN INSTANCE OF THE CONTROLLER IS NOT GLOBALLY PRESENT
                // Get.find<KamalController>().increment();

                //WHEN INIT IS PRESENT GLOBALLY
                kamalController.increment();
              },
              child: const Text("Increment"))
        ],
      )),
    );
  }
}
