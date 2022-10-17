import 'package:ecommerce_demo/Controller/home_controller.dart';
import 'package:get/get.dart';

class PagesController extends GetxController {
  RxInt index = 0.obs;

  goHome() {
    index.value = 0;
  }

  goNews() {
    index.value = 1;
  }

  goFav() {
    index.value = 2;
  }

  goCart() {
    index.value = 3;
  }
}
