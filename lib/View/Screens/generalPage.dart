import 'package:ecommerce_demo/Controller/home_controller.dart';
import 'package:ecommerce_demo/View/Screens/cart_screen.dart';
import 'package:ecommerce_demo/View/Screens/favourite_screen.dart';
import 'package:get/get.dart';

import '../../Controller/pages_controller.dart';
import 'home_screen.dart';
import 'package:flutter/material.dart';

import '../../Constant/appColors.dart';
import '../Widgets/Bottom Navigator/bottomNavigator.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({Key? key}) : super(key: key);

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  int currentIndex = 0;
  List pages = const [
    HomeScreen(),
    HomeScreen(),
    FavouriteScreen(),
    CartScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: GetX<PagesController>(
          builder: (controller) => pages[controller.index.value]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors().mainColor,
        child: GetX<HomeController>(builder: (controller) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(controller.total.toString()),
              Image.asset(
                'assets/Images/cart.png',
                color: Colors.white,
                height: size.height * 0.03,
              ),
            ],
          );
        }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomWidget(),
    ));
  }
}
