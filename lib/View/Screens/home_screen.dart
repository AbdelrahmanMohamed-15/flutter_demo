import 'package:ecommerce_demo/View/Widgets/banner_widget.dart';
import '../../Controller/home_controller.dart';
import '../Widgets/Address%20Widgets/address_content.dart';
import '../Widgets/Category%20Widgets/category_content.dart';
import '../Widgets/search_widget.dart';
import '../Widgets/Header%20Widget/header.dart';
import '../Widgets/Product%20Widget/product_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/Home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.03),
              HeaderWidget(),
              SizedBox(height: size.height * 0.04),
              SizedBox(
                height: size.height * 0.06,
                child: const SearchWidget(),
              ),
              SizedBox(height: size.height * 0.04),
              AddressContent(),
              SizedBox(height: size.height * 0.04),
              CategoryContent(
                size: size,
              ),
              SizedBox(height: size.height * 0.04),
              ProductContent(
                size: size,
              ),
              SizedBox(height: size.height * 0.04),
              const BannerWidget(),
              SizedBox(height: size.height * 0.07),
            ],
          ),
        ),
      ),
    ));
  }
}
