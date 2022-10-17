import 'dart:convert';

import 'package:ecommerce_demo/Data/Model/cartModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constant/appColors.dart';
import '../../Controller/home_controller.dart';
import '../Widgets/Header Widget/header.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.03),
              HeaderWidget(),
              SizedBox(height: size.height * 0.04),
              const Text('Cart',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
              SizedBox(height: size.height * 0.04),
              GetX<HomeController>(builder: (controller) {
                var list = [];
                var priceList = [];
                controller.cartProductlList.forEach((key, value) {
                  list.add(value);
                });
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      priceList.add(list[index].price!);
                      int sum = priceList.fold(
                          0, (sum, element) => sum + int.parse(element));
                      controller.getTotal(sum: sum);
                      return Container(
                        height: size.height * 0.15,
                        margin:
                            EdgeInsets.symmetric(vertical: size.height * 0.01),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: Colors.grey[300]!, width: 1.5)),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(list[index].image!)),
                              ),
                            ),
                            SizedBox(width: size.width * 0.03),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  list[index].name!,
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: AppColors().darkGreyColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: size.height * 0.01),
                                Text(
                                  'Pecies : ${list[index].quantity!}',
                                  style: TextStyle(
                                      fontSize: 10.0,
                                      color: AppColors().darkGreyColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: size.height * 0.01),
                                Text(
                                  'Price : ${list[index].price!} \$',
                                  style: TextStyle(
                                      fontSize: 10.0,
                                      color: AppColors().mainColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: size.height * 0.01),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      width: size.width * 0.3,
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              int ind = int.parse(
                                                  list[index].cartQuantity!);
                                              setState(() {
                                                ind++;
                                              });
                                            },
                                            child: Card(
                                              color: AppColors().lightBlueColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.all(3),
                                                child: Icon(
                                                  Icons.add,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              child: Center(
                                                  child: Text(list[index]
                                                      .cartQuantity!))),
                                          Card(
                                            color: AppColors().lightBlueColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(3),
                                              child: Icon(
                                                Icons.remove,
                                                size: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ))
                          ],
                        ),
                      );
                    });
              })
            ],
          ),
        ),
      ),
    ));
  }
}
