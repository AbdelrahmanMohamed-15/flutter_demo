// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_demo/Constant/appColors.dart';
import 'package:ecommerce_demo/Controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'category_card_widget.dart';

class CategoryContent extends StatelessWidget {
  dynamic size;
  CategoryContent({Key? key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(builder: (controller) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Explore by Category',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
              Text(
                'See All (${controller.category.length})',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    color: AppColors().lightGreyColor),
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SizedBox(
            height: size.height * 0.13,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: controller.category.length,
                itemBuilder: (context, index) {
                  return categoryCard(
                      size: size,
                      catName: controller.category[index].catName,
                      catImage: controller.category[index].catImage);
                }),
          )
        ],
      );
    });
  }
}
