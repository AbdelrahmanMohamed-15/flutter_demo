import 'package:ecommerce_demo/Controller/home_controller.dart';
import 'package:ecommerce_demo/Controller/pages_controller.dart';
import 'package:get/get.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController(), permanent: true);
    Get.put(PagesController(), permanent: true);
  }
}
