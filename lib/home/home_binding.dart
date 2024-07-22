import 'package:get/get.dart';
import 'package:onlyfconline/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  dependencies() {
    Get.put(HomeController());
  }
}
