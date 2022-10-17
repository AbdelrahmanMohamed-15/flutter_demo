// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ecommerce_demo/Constant/appColors.dart';

class AddressCard extends StatelessWidget {
  dynamic size;
  String? image;
  String? title;
  String? conent;
  String? des;
  AddressCard({
    Key? key,
    required this.size,
    this.image,
    this.title,
    this.conent,
    this.des,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.02, vertical: size.height * 0.005),
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(width: 1.5, color: Colors.grey[300]!),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: size.height * 0.10,
            width: size.width * 0.12,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(width: 1.5, color: Colors.grey[300]!),
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(image!))),
          ),
          SizedBox(
            width: size.width * 0.02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title!,
                style: TextStyle(
                    fontSize: 14.0,
                    color: AppColors().darkGreyColor,
                    fontWeight: FontWeight.bold),
              ),
              // SizedBox(height: size.height * 0.005),
              Text(
                conent!,
                style: TextStyle(
                  fontSize: 12.0,
                  color: AppColors().darkGreyColor,
                ),
              ),
              // SizedBox(height: size.height * 0.005),
              Text(
                des!,
                style: TextStyle(
                  fontSize: 12.0,
                  color: AppColors().darkGreyColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
