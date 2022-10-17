// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ecommerce_demo/Data/Model/cartModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ecommerce_demo/Controller/home_controller.dart';

import '../../../Constant/appColors.dart';
import '../../../Data/Model/favourite_model.dart';

class ProductCard extends StatelessWidget {
  dynamic size;
  String? id;
  String? image;
  String? name;
  String? quantity;
  String? price;
  String? discount;
  IconData? favIcon;
  Color? favColor;
  Function()? addCart;
  Function()? favCart;
  int index;
  double width;
  ProductCard({
    Key? key,
    required this.size,
    this.id,
    this.image,
    this.name,
    this.quantity,
    this.price,
    this.discount,
    this.favIcon,
    this.favColor,
    this.addCart,
    this.favCart,
    required this.index,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.11,
      width: size.width * 0.55,
      margin: EdgeInsets.only(right: size.width * 0.03),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.grey[200]!, width: 1.5)),
      child: Row(
        children: [
          Container(
            height: size.height * 0.10,
            width: size.width * 0.17,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(image!))),
          ),
          SizedBox(width: size.width * 0.03),
          SizedBox(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  name!,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: AppColors().darkGreyColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Pecies : ${quantity!}',
                  style: TextStyle(
                      fontSize: 10.0,
                      color: AppColors().darkGreyColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Price : ${price!} \$',
                  style: TextStyle(
                      fontSize: 10.0,
                      color: AppColors().mainColor,
                      fontWeight: FontWeight.bold),
                ),
                GetX<HomeController>(builder: (controller) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          controller.changecartIndex(index: index);
                          var cartModel = ProductCartModel(
                            id: controller.product[index].id,
                            image: controller.product[index].image,
                            name: controller.product[index].name,
                            price: controller.product[index].price,
                            quantity: controller.product[index].quantity,
                            cartQuantity: '1',
                          );
                          if (controller.cartList[index] == true) {
                            controller.addCart(
                                id: controller.product[index].id!,
                                productCartModel: cartModel);
                          } else {
                            controller.deleteCartModel(
                                id: controller.product[index].id!);
                            return;
                          }
                        },
                        child: controller.cartList[index] == false
                            ? Icon(
                                Icons.shopping_cart_sharp,
                                size: 18,
                                color: AppColors().mainColor,
                              )
                            : Text(
                                'remove from cart',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: AppColors().mainColor),
                              ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.changeFavIndex(index: index);
                          var favModel = FavouriteModel(
                              id: controller.product[index].id,
                              dicount: controller.product[index].dicount,
                              image: controller.product[index].image,
                              name: controller.product[index].name,
                              price: controller.product[index].price,
                              quantity: controller.product[index].quantity);
                          if (controller.favList[index] == true) {
                            controller.addFavouriteModel(
                                id: controller.product[index].id!,
                                favouriteModel: favModel);
                          } else {
                            controller.deleteFavouriteModel(
                                id: controller.product[index].id!);
                          }
                        },
                        child: Icon(
                          controller.favList[index] == false
                              ? Icons.favorite_border
                              : Icons.favorite,
                          size: 18,
                          color: controller.favList[index] == false
                              ? Colors.grey[300]
                              : Colors.red,
                        ),
                      )
                    ],
                  );
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
