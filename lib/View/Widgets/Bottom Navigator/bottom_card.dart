// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ecommerce_demo/Constant/appColors.dart';

class BottomCard extends StatelessWidget {
  String? image;
  String? name;
  Color? iconColor;
  Color? textColor;
  BottomCard({
    Key? key,
    this.image,
    this.name,
    this.iconColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image!,
          height: size.height * 0.03,
          width: size.width * 0.05,
          color: iconColor,
        ),
        SizedBox(height: size.height * 0.005),
        Text(
          name!,
          style: TextStyle(
            fontSize: 8.0,
            color: textColor,
          ),
        )
      ],
    );
  }
}
