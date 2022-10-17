import 'package:ecommerce_demo/Controller/home_controller.dart';
import 'package:ecommerce_demo/View/Widgets/Product%20Widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Widgets/Header Widget/header.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
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
              const Text('Favourite',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
              SizedBox(height: size.height * 0.04),
              GetX<HomeController>(builder: (controller) {
                var list = [];
                controller.favModelList.forEach((key, value) {
                  list.add(value);
                });
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: size.height * 0.007),
                        child: ProductCard(
                          size: size,
                          index: index,
                          width: size.width * 0.6,
                          image: list[index].image,
                          discount: list[index].dicount,
                          id: list[index].id,
                          name: list[index].name,
                          price: list[index].price,
                          quantity: list[index].quantity,
                          favColor: controller.favList[index] == false
                              ? Colors.grey[300]
                              : Colors.red,
                          favIcon: controller.favList[index] == false
                              ? Icons.favorite_border
                              : Icons.favorite,
                          addCart: () {},
                          favCart: () {
                            controller.deleteFavouriteModel(
                                id: list[index].id!);
                          },
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
