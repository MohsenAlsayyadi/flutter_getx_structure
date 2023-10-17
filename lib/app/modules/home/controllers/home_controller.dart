import 'package:get/get.dart';

class HomeController extends GetxController {
  int counter = 0;
  increment() {
    counter++;
    update([1]);
  }

  decrement() {
    counter--;
    update([1]);
  }
}
