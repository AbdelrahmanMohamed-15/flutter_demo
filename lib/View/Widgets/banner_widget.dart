import 'package:ecommerce_demo/Constant/appColors.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      decoration: BoxDecoration(
          color: const Color(0xFFFEC8BD),
          borderRadius: BorderRadius.circular(12.0)),
      child: Row(
        children: [
          SizedBox(width: size.width * 0.3),
          SizedBox(
            height: size.height * 0.15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mega',
                  style: TextStyle(
                      color: AppColors().mainColor,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                RichText(
                    text: TextSpan(
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                        children: [
                      TextSpan(
                          text: 'WHOPP',
                          style: TextStyle(color: AppColors().blueBlackColor)),
                      TextSpan(
                          text: 'E',
                          style: TextStyle(color: AppColors().mainColor)),
                      TextSpan(
                          text: 'R',
                          style: TextStyle(color: AppColors().blueBlackColor))
                    ])),
                Text(
                  '\$ 17',
                  style: TextStyle(
                      color: AppColors().mainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '* Available until 24 December 2020',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
