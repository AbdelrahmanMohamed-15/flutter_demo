// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:ecommerce_demo/Controller/home_controller.dart';
import 'package:ecommerce_demo/View/Widgets/Address%20Widgets/addres_card.dart';

class AddressContent extends StatelessWidget {
  AddressContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
        height: size.height * 0.09,
        child: GetX<HomeController>(
          init: HomeController(),
          builder: (controller) {
            return ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: controller.address.length,
              itemBuilder: (context, index) {
                return AddressCard(
                  size: size,
                  image: controller.address[index].img,
                  title: controller.address[index].type,
                  conent: controller.address[index].street,
                  des: controller.address[index].details,
                );
              },
            );
          },
        ));
  }
}
