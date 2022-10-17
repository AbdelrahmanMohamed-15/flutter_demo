import 'package:ecommerce_demo/Data/Model/favourite_model.dart';
import 'package:ecommerce_demo/View/Widgets/Product%20Widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/home_controller.dart';

class ProductContent extends StatelessWidget {
  dynamic size;
  ProductContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(builder: (controller) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Deals of the day',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
          SizedBox(
            height: size.height * 0.03,
          ),
          SizedBox(
            height: size.height * 0.11,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: controller.product.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    size: size,
                    index: index,
                    width: size.width * 0.30,
                    image: controller.product[index].image,
                    discount: controller.product[index].dicount,
                    id: controller.product[index].id,
                    name: controller.product[index].name,
                    price: controller.product[index].price,
                    quantity: controller.product[index].quantity,
                    addCart: () {},
                  );
                }),
          )
        ],
      );
    });
  }
}
