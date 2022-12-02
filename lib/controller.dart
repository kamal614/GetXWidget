import 'package:get/get.dart';

class KamalController extends GetxController {
  var count = RxInt(0);
  void increment() {
    count++;
  }
}
