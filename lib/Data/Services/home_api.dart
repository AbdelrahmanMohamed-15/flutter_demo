import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Model/address_model.dart';
import '../Model/category_model.dart';
import '../Model/home_model.dart';
import '../Model/product_model.dart';

class HomeAPI {
  Future<HomeModel> getHomeData() async {
    String url = "https://run.mocky.io/v3/28dcf531-7ea6-443b-a846-6860982883cc";
    HomeModel homeModel = HomeModel();
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      homeModel = HomeModel.fromJson(data);
      return homeModel;
    }
    return homeModel;
  }

  Future<List<AddressModel>> getAddress() async {
    String url = "https://run.mocky.io/v3/28dcf531-7ea6-443b-a846-6860982883cc";
    List<AddressModel> addressModel = [];
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<Map<String, dynamic>> decoded =
          List<Map<String, dynamic>>.from(data['address']);
      addressModel = decoded.map((e) => AddressModel.fromJson(e)).toList();
      return addressModel;
    }
    return addressModel;
  }

  Future<List<CategoryModel>> getCategory() async {
    String url = "https://run.mocky.io/v3/555b73c3-7dfb-484f-b9d9-d20629387913";
    List<CategoryModel> categoryModel = [];
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<Map<String, dynamic>> decoded =
          List<Map<String, dynamic>>.from(data);
      categoryModel = decoded.map((e) => CategoryModel.fromJson(e)).toList();
      return categoryModel;
    }
    return categoryModel;
  }

  Future<List<ProductModel>> getProduct() async {
    String url = "https://run.mocky.io/v3/6af652b0-289c-49a2-9034-ef8c0d793061";
    List<ProductModel> productModel = [];
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<Map<String, dynamic>> decoded =
          List<Map<String, dynamic>>.from(data);
      productModel = decoded.map((e) => ProductModel.fromJson(e)).toList();
      return productModel;
    }
    return productModel;
  }
}
