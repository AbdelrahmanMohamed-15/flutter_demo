import 'package:ecommerce_demo/Data/Model/cartModel.dart';
import 'package:ecommerce_demo/Data/Model/favourite_model.dart';

import '../Data/Model/address_model.dart';
import '../Data/Model/category_model.dart';
import '../Data/Model/home_model.dart';
import '../Data/Model/product_model.dart';
import '../Data/Services/home_api.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var homeModel = HomeModel().obs;
  var address = <AddressModel>[].obs;
  var category = <CategoryModel>[].obs;
  var product = <ProductModel>[].obs;
  var favList = <bool>[].obs;
  var favModelList = <String, dynamic>{}.obs;
  var cartList = <bool>[].obs;
  var cartProductlList = <String, dynamic>{}.obs;
  RxInt total = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getHome();
    getAddress();
    getCategory();
    getProduct();
  }

  getTotal({required int sum}) {
    total.value = sum;
  }

  getHome() async {
    var home = await HomeAPI().getHomeData();
    homeModel.value = home;
  }

  getAddress() async {
    var add = await HomeAPI().getAddress();
    address.value = add;
  }

  getCategory() async {
    var cat = await HomeAPI().getCategory();
    category.value = cat;
  }

  getProduct() async {
    var pro = await HomeAPI().getProduct();
    product.value = pro;
    updateFavourite();
    updatecart();
  }

  updateFavourite() {
    var favlist = List<bool>.generate(product.length, (index) => false);
    favList.value = favlist;
  }

  updatecart() {
    var cartlist = List<bool>.generate(product.length, (index) => false);
    cartList.value = cartlist;
  }

  changeFavIndex({required int index}) {
    favList[index] = !favList[index];
  }

  changecartIndex({required int index}) {
    cartList[index] = !cartList[index];
  }

  addFavouriteModel(
      {required String id, required FavouriteModel favouriteModel}) {
    favModelList['$id'] = favouriteModel;
  }

  addCart({required String id, required ProductCartModel productCartModel}) {
    cartProductlList['$id'] = productCartModel;
  }

  deleteFavouriteModel({required String id}) {
    favModelList.removeWhere((key, value) => key == id);
  }

  deleteCartModel({required String id}) {
    cartProductlList.removeWhere((key, value) => key == id);
  }
}
