import 'package:ecommerce_demo/Controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Header%20Widget/location.dart';

class HeaderWidget extends StatelessWidget {
  HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LocationWidget(
            location: controller.homeModel.value.location,
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey[400]!),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      controller.homeModel.value.profileImage ??=
                          "https://miro.medium.com/max/1400/0*0fClPmIScV5pTLoE.jpg",
                    ))),
          )
        ],
      );
    });
  }
}
