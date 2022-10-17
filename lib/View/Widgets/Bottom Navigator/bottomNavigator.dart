// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_demo/Constant/appColors.dart';
import 'package:ecommerce_demo/Controller/pages_controller.dart';
import 'package:ecommerce_demo/View/Widgets/Bottom%20Navigator/bottom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomWidget extends StatelessWidget {
  BottomWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GetX<PagesController>(
        init: PagesController(),
        builder: (controller) {
          return BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
              height: size.height * 0.06,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          controller.goHome();
                        },
                        child: BottomCard(
                          image: 'assets/Images/georcy.png',
                          name: 'Grocery',
                          iconColor: controller.index.value == 0
                              ? AppColors().mainColor
                              : AppColors().darkGreyColor,
                          textColor: controller.index.value == 0
                              ? AppColors().mainColor
                              : AppColors().darkGreyColor,
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          controller.goNews();
                        },
                        child: BottomCard(
                          image: 'assets/Images/bell.png',
                          name: 'News',
                          iconColor: controller.index.value == 1
                              ? AppColors().mainColor
                              : AppColors().darkGreyColor,
                          textColor: controller.index.value == 1
                              ? AppColors().mainColor
                              : AppColors().darkGreyColor,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          controller.goFav();
                        },
                        child: BottomCard(
                          image: 'assets/Images/fav.png',
                          name: 'Favorites',
                          iconColor: controller.index.value == 2
                              ? AppColors().mainColor
                              : AppColors().darkGreyColor,
                          textColor: controller.index.value == 2
                              ? AppColors().mainColor
                              : AppColors().darkGreyColor,
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          controller.goCart();
                        },
                        child: BottomCard(
                          image: 'assets/Images/wallet.png',
                          name: 'Cart',
                          iconColor: controller.index.value == 3
                              ? AppColors().mainColor
                              : AppColors().darkGreyColor,
                          textColor: controller.index.value == 3
                              ? AppColors().mainColor
                              : AppColors().darkGreyColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
