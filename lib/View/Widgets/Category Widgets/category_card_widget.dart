import 'package:flutter/material.dart';

categoryCard({dynamic size, String? catImage, String? catName}) {
  return Column(
    children: [
      InkWell(
        child: Container(
          height: size.height * 0.07,
          width: size.width * 0.15,
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                  image: NetworkImage(catImage!), fit: BoxFit.fill)),
        ),
      ),
      SizedBox(height: size.height * 0.01),
      Text(
        catName!,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
      )
    ],
  );
}
