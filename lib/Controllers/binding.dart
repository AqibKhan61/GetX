import 'package:get/get.dart';
import 'package:getx/Controllers/countercontroller.dart';

class Screen5Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterController>(() => CounterController());
  }
}